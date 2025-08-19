/**
 * © 2025 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms
 * applicable to your use of third party software (including open
 * source software) that may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,
 * MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL,
 * PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE
 * OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED,
 * EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE
 * DAMAGES ARE FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW,
 * MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO
 * THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU
 * HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * @file        bl_core.c
 * @ingroup     mdfu_client_8bit
 *
 * @brief       This file contains APIs to support  file transfer-based
 *              bootloader operations, including  an FTP module and all bootloader
 *              core firmware.
 *
 * @see @ref    mdfu_client_8bit_ftp
 */

/**@misradeviation{@required, 11.3} Although this is a valid concern in most systems, we are
 * deviating from common practice here because we know how the compilers will behave for our
 * hardware. There is no inherent risk for the supported MCUs when casting from these two pointer types.
 * Be sure to take care when porting this code to a new hardware system as the endianness of the
 * hardware does matter.
 */

#include "bl_core.h"
#include "bl_app_verify.h"
#include "bl_config.h"
#include "bl_memory.h"
#if BL_APPLICATION_IMAGE_COUNT > 1
#include "bl_image_manager.h"
#endif
#include "ftp/bl_ftp.h"
#include "../com_adapter/com_adapter.h"
#ifdef __XC8__
#include <xc.h>
#endif

typedef struct
{
    bl_block_header_t blockHeader;
    uint8_t imageVersionPatch;
    uint8_t imageVersionMinor;
    uint8_t imageVersionMajor;
    uint32_t deviceId;
    uint16_t maxPayloadSize;
    bl_command_header_t commandHeader;
} bl_unlock_boot_metadata_t;

static bool bootloaderCoreUnlocked = false;
#ifdef PIC_ARCH
    /* cppcheck-suppress misra-c2012-8.9;
    This static definition is required when multiple images are used and to simplify
    the code generation we will not follow this rule. */
    static key_structure_t coreMemoryKeys = {
        .eraseUnlockKey = 0x0000U,
        .byteWordWriteUnlockKey = 0x0000U,
        .rowWriteUnlockKey = 0x0000U,
        .readUnlockKey = 0x0000U,
    };
#endif
#if defined(AVR_ARCH)
typedef void (*app_t)(void);
#endif

static bl_result_t BootloaderProcessorUnlock(uint8_t * bufferPtr);
static void DownloadAreaErase(uint32_t startAddress, uint16_t pageEraseUnlockKey);

/* cppcheck-suppress misra-c2012-2.7; This rule will not be followed to aid in new feature support in the future. */
bl_result_t BL_BootCommandProcess(uint8_t * bootDataPtr, uint16_t bufferLength)
{
    bl_result_t bootCommandStatus = BL_ERROR_UNKNOWN_COMMAND;

    // Copy the data buffer into a defined packet structure
    bl_command_header_t commandHeader;
    (void) memcpy(&commandHeader, (void *) & bootDataPtr[BL_BLOCK_HEADER_SIZE] , sizeof (bl_command_header_t));
    bl_block_header_t blockHeader;
    (void) memcpy(&blockHeader, (void *) bootDataPtr, BL_BLOCK_HEADER_SIZE);

#ifdef PIC_ARCH
    coreMemoryKeys.eraseUnlockKey = commandHeader.pageEraseUnlockKey;
    coreMemoryKeys.byteWordWriteUnlockKey = commandHeader.byteWriteUnlockKey;
    coreMemoryKeys.rowWriteUnlockKey = commandHeader.pageWriteUnlockKey;
    coreMemoryKeys.readUnlockKey = commandHeader.pageReadUnlockKey;
#endif
    // Switch on the bootloader command and execute the logic needed
    switch (blockHeader.blockType)
    {
    case UNLOCK_BOOTLOADER:
        bootCommandStatus = BootloaderProcessorUnlock(bootDataPtr);
        break;
    case WRITE_FLASH:
        if (bootloaderCoreUnlocked)
        {
#ifdef PIC_ARCH
            // Provide memory unlock/lock keys to the memory layer
            BL_MemoryUnlockKeysInit(coreMemoryKeys);
#endif

            // Calculate the offset needed for the download location
            // This mathematical corelation is consistent as long as the execution image is located at the lower addresses and all image spaces are the same size.
            flash_address_t stagingAreaOffset = (flash_address_t) (BL_STAGING_IMAGE_START - BL_APPLICATION_START_ADDRESS);

            if ((FLASH_PageOffsetGet((flash_address_t) (commandHeader.startAddress + stagingAreaOffset)) == (flash_address_t) 0)
                    /* cppcheck-suppress misra-c2012-7.2; This rule cannot be followed due to assembly syntax requirements. */
                    && (flash_address_t) (commandHeader.startAddress + stagingAreaOffset) >= (flash_address_t) BL_STAGING_IMAGE_START)
            {
                // Call the abstracted write function
                bl_mem_result_t memoryStatus = BL_FlashWrite(
                                                             (flash_address_t) commandHeader.startAddress + stagingAreaOffset,
                                                             /* cppcheck-suppress misra-c2012-11.3 */
                                                             (flash_data_t *) & (bootDataPtr[BL_COMMAND_HEADER_SIZE + BL_BLOCK_HEADER_SIZE]),
                                                             PROGMEM_PAGE_SIZE
                                                             );

                bootCommandStatus = (memoryStatus == BL_MEM_PASS) ? BL_PASS : BL_ERROR_COMMAND_PROCESSING;
            }
            else
            {
                bootCommandStatus = BL_ERROR_ADDRESS_OUT_OF_RANGE;
            }
#ifdef PIC_ARCH
            // Erase keys before proceeding
            BL_MemoryUnlockKeysClear();
#endif
        }
        break;

#if defined(BL_EEPROM_WRITE_ENABLED)
    case WRITE_EEPROM:
        if (bootloaderCoreUnlocked)
        {
#ifdef PIC_ARCH
            // Provide memory unlock/lock keys to the memory layer
            BL_MemoryUnlockKeysInit(coreMemoryKeys);
#endif
            if (FLASH_PageOffsetGet((eeprom_address_t) commandHeader.startAddress) == (eeprom_address_t) 0)
            {
                bl_mem_result_t memoryStatus = BL_EEPROMWrite(
                                                              (eeprom_address_t) commandHeader.startAddress,
                                                              (eeprom_data_t *) & (bootDataPtr[BL_COMMAND_HEADER_SIZE + BL_BLOCK_HEADER_SIZE]),
                                                              (blockHeader.blockLength - ((BL_COMMAND_HEADER_SIZE + BL_BLOCK_HEADER_SIZE)  - 2U))
                                                              );

                bootCommandStatus = (memoryStatus == BL_MEM_PASS) ? BL_PASS : BL_ERROR_COMMAND_PROCESSING;
            }
            else
            {
                bootCommandStatus = BL_ERROR_ADDRESS_OUT_OF_RANGE;
            }
#ifdef PIC_ARCH
            // Erase keys before proceeding
            BL_MemoryUnlockKeysClear();
#endif
        }
        break;
#endif
    default:
        bootCommandStatus = BL_ERROR_UNKNOWN_COMMAND;
        break;
    }

    return bootCommandStatus;
}

void BL_ApplicationStart(void)
{
#if defined(AVR_ARCH)
    /* cppcheck-suppress misra-c2012-7.2;
    This rule cannot be followed due to assembly syntax requirements. */
    app_t app = (app_t) ((uint64_t) BL_APPLICATION_START_ADDRESS / sizeof (app_t));
    app();
#elif defined(_PIC18)
    STKPTR = 0x00U;
    BSR = 0x00U;
    asm("goto " ___mkstr(BL_APPLICATION_START_ADDRESS));
#elif defined(PIC_ARCH) && !defined(_PIC18)
    STKPTR = 0x1FU;
    BSR = 0U;
    asm("pagesel " ___mkstr(BL_APPLICATION_START_ADDRESS));
    asm("goto  " ___mkstr(BL_APPLICATION_START_ADDRESS));
#endif
}

bl_result_t BL_Initialize(void)
{
    bl_result_t initResult = BL_PASS;

    // Prevent the core memory functions from executing until the metadata has been validated
    bootloaderCoreUnlocked = false;

    return initResult;
}

static bl_result_t BootloaderProcessorUnlock(uint8_t * bufferPtr)
{
    bl_result_t commandStatus = BL_FAIL;

    bl_unlock_boot_metadata_t metadataPacket;
    (void) memcpy(&metadataPacket, (void *) bufferPtr, sizeof (bl_unlock_boot_metadata_t));

   /**
     * Verify the bootloader major version. The core must use the exact major version of the file format.
     * - If the file has a lower major version then there is likely 
     * missing data elements that are required by the running version of the core.
     * - If the file has a larger major version then the data elements in the new
     * file format likely have shifted around a may not function as intended so it
     * is more stable to reject it in this case.
     *
     * Note: We must always increase the major version of the file anytime the metadata block changes or a new block is added
     * to the file definition that is a requirement of the core firmware in order to perform an update.
     */
    if((metadataPacket.imageVersionMajor) != (uint8_t) BL_IMAGE_FORMAT_MAJOR_VERSION)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    /* 
     * Verify the minor version. The minor version must be less than or equal to the configured version.
     * - If the image minor version is less than the configured version then all block types will be valid in the new implementation.
     * - If the image minor version is larger than the current configured version that would indicate that a new block type has been added
     * to the file format being uploaded and the core may encounter an unknown block that could cause a failed update.
     * 
     * Note: We must always increase the minor version when a new block is added to the file definition that does not change
     * the behavior of any already defined block types and is not a required operation in the core firmware. If any new blocks 
     * are added to the file definition that break these two rules it should be added as a major change.
     */
    else if(metadataPacket.imageVersionMinor > (uint8_t) BL_IMAGE_FORMAT_MINOR_VERSION)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    else
    {
        /**
        * The patch version of the file will not be checked, as it should never affect the behavior.
        * If changing the patch version ever requires manipulating old data elements in a way that will affect the core's behavior,
        * it should be treated as a larger version change.
        */
    }

    // Read device id from memory and compare against the expected id housed in the file data.
#if defined(PIC_ARCH)
    device_id_data_t deviceId = DeviceID_Read(BL_DEVICE_ID_START_ADDRESS_U);
#elif defined(AVR_ARCH)
    device_id_data_t deviceId = SIGROW_DeviceIDRead(BL_DEVICE_ID_START_ADDRESS_U);
#endif
    if (deviceId != (device_id_data_t) metadataPacket.deviceId)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    // Read and compare write size
    if (metadataPacket.maxPayloadSize != BL_WRITE_BYTE_LENGTH)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    // Compare the given start of app to the APPLICATION_START_ADDRESS and handle
    /* cppcheck-suppress misra-c2012-7.2;
    This rule cannot be followed due to assembly syntax requirements. */
    if (metadataPacket.commandHeader.startAddress != (uint32_t) BL_APPLICATION_START_ADDRESS)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }

    // Compare each NVM key that is expected to be used for booting
#if defined(_18FXXQ10_FAMILY_)
    if (metadataPacket.commandHeader.pageEraseUnlockKey != (uint16_t) UNLOCK_KEY_PAGE_ERASE)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageWriteUnlockKey != (uint16_t) UNLOCK_KEY_ROW_WRITE)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageReadUnlockKey != (uint16_t) UNLOCK_KEY_ROW_READ)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.byteWriteUnlockKey != (uint16_t) UNLOCK_KEY_WORD_BYTE_WRITE)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
#elif defined(PIC_ARCH)
    if (metadataPacket.commandHeader.pageEraseUnlockKey != (uint16_t) UNLOCK_KEY)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageWriteUnlockKey != (uint16_t) UNLOCK_KEY)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageReadUnlockKey != 0x0000U)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.byteWriteUnlockKey != (uint16_t) UNLOCK_KEY)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
#elif defined(AVR_ARCH)
    if (metadataPacket.commandHeader.pageEraseUnlockKey != 0x0000U)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageWriteUnlockKey != 0x0000U)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.pageReadUnlockKey != 0x0000U)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
    if (metadataPacket.commandHeader.byteWriteUnlockKey != 0x0000U)
    {
        commandStatus = BL_ERROR_VERIFICATION_FAIL;
    }
#endif

    if (commandStatus != BL_ERROR_VERIFICATION_FAIL)
    {
        bootloaderCoreUnlocked = true;
        commandStatus = BL_PASS;
        DownloadAreaErase(
                        BL_STAGING_IMAGE_START,
                        metadataPacket.commandHeader.pageEraseUnlockKey
                        );
    }

    return commandStatus;
}

/* cppcheck-suppress misra-c2012-2.7 */
static void DownloadAreaErase(uint32_t startAddress, uint16_t pageEraseUnlockKey)
{
    nvm_status_t errorStatus;

    flash_address_t address;
    address = (flash_address_t) startAddress;

#ifdef PIC_ARCH
    uint16_t unlockKey = pageEraseUnlockKey;
#endif
    while (address < BL_STAGING_IMAGE_END)
    {
#ifdef PIC_ARCH
        NVM_UnlockKeySet(unlockKey);
#endif
        errorStatus = FLASH_PageErase(address);
#ifdef PIC_ARCH
        while(NVM_IsBusy() == true)
        {
            
        }
#else 
        while(FLASH_IsBusy() == true)
        {
            
        }
#endif
#ifdef PIC_ARCH
        NVM_UnlockKeyClear();
#endif
        if (errorStatus != NVM_OK)
        {
            break;
        }
        address += PROGMEM_PAGE_SIZE;
    }
}

#if BL_APPLICATION_IMAGE_COUNT > 1
#ifdef PIC_ARCH
void BL_InternalKeySet(void)
{
    coreMemoryKeys.byteWordWriteUnlockKey = BL_KEY_WORD_BYTE_PART;
    coreMemoryKeys.eraseUnlockKey = BL_KEY_PAGE_ERASE_PART;
    coreMemoryKeys.rowWriteUnlockKey = BL_KEY_ROW_WRITE_PART;
    coreMemoryKeys.readUnlockKey = BL_KEY_ROW_READ_PART;
}

void BL_InternalKeyClear(void)
{
    coreMemoryKeys.byteWordWriteUnlockKey = 0x0000;
    coreMemoryKeys.eraseUnlockKey = 0x0000;
    coreMemoryKeys.rowWriteUnlockKey = 0x0000;
    coreMemoryKeys.readUnlockKey = 0x0000;
}
#endif

bl_result_t BL_CopyImageAreas(uint8_t srcImageId, uint8_t destImageId)
{
    bl_result_t copyResult = BL_FAIL;
    bl_mem_result_t errorStatus = BL_MEM_FAIL;

    // Check for valid image id values
    if (
            srcImageId > (BL_APPLICATION_IMAGE_COUNT - 1U) ||
            destImageId > (BL_APPLICATION_IMAGE_COUNT - 1U) ||
            srcImageId == destImageId
            )
    {
        copyResult = BL_ERROR_INVALID_ARGUMENTS;
    }
    else
    {
        // Retrieve the start addresses of both image spaces
        flash_address_t destinationAddressStart = BL_ApplicationStartAddressGet(destImageId);
        flash_address_t srcAddressStart = BL_ApplicationStartAddressGet(srcImageId);

        if (destinationAddressStart >= BL_APPLICATION_START_ADDRESS)
        {
#ifdef PIC_ARCH
            // Finish initializing the keys needed for the copy operation
            coreMemoryKeys.eraseUnlockKey -= BL_KEY_OPERATOR;
            coreMemoryKeys.rowWriteUnlockKey -= BL_KEY_OPERATOR;
#endif
            // Copy the entire length of the image area page-by-page
            for (uint32_t byteCount = 0; byteCount < BL_IMAGE_PARTITION_SIZE; byteCount += PROGMEM_PAGE_SIZE)
            {
#ifdef PIC_ARCH
                // Pass the calculated keys to the memory layer
                BL_MemoryUnlockKeysInit(coreMemoryKeys);
#endif
                // Perform the copy operation on the next page
                errorStatus = BL_FlashCopy(srcAddressStart, destinationAddressStart, PROGMEM_PAGE_SIZE);
#ifdef PIC_ARCH
                BL_MemoryUnlockKeysClear();
#endif
                if (errorStatus != BL_MEM_PASS)
                {
                    copyResult = BL_ERROR_COMMAND_PROCESSING;
                    break;
                }

                // Move to the next page
                srcAddressStart += PROGMEM_PAGE_SIZE;
                destinationAddressStart += PROGMEM_PAGE_SIZE;
            }
        }

        // Set the result status
        copyResult = (errorStatus != BL_MEM_PASS) ? BL_ERROR_COMMAND_PROCESSING : BL_PASS;
    }

    return copyResult;
}
#endif
