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
 * @file        bl_image_manager.c
 * @ingroup     bl_image_manager
 *
 * @brief       This file contains APIs to support application
 *              footer data operations and validation operations for the
 *              8-bit MDFU Client library.
 *
 * @see @ref    mdfu_client_8bit
 */

#include "bl_image_manager.h"
#include "bl_config.h"
#include "bl_memory.h"

flash_address_t BL_ApplicationStartAddressGet(uint8_t imageId)
{
    flash_address_t imageStartAddress = 0x00;

    if (imageId < BL_APPLICATION_IMAGE_COUNT)
    {
        return ((flash_address_t) BL_APPLICATION_START_ADDRESS) + (BL_IMAGE_PARTITION_SIZE * imageId);
    }

    return imageStartAddress;
}

flash_address_t BL_ApplicationFooterStartAddressGet(uint8_t imageId)
{
    flash_address_t footerStartAddress = 0x00;

    if (imageId < BL_APPLICATION_IMAGE_COUNT)
    {
        return ((flash_address_t) BL_APPLICATION_END_ADDRESS + 1U) + (BL_IMAGE_PARTITION_SIZE * imageId) - sizeof (bl_footer_data_t);
    }

    return footerStartAddress;
}

uint32_t BL_ApplicationVersionGet(uint8_t imageId)
{
    bl_footer_data_t workFooterData = {
        .applicationId = 0,
        .applicationVersion = 0,
        .verificationEndAddress = 0,
        .verificationStartAddress = 0,
#if HASH_DATA_SIZE != 0U
        .verificationData = 0
#endif
    };
    BL_ApplicationFooterRead(imageId, &workFooterData);
    return workFooterData.applicationVersion;
}

uint8_t BL_ApplicationDownloadIdGet(uint8_t imageId)
{
    bl_footer_data_t workFooterData = {
        .applicationId = 0,
        .applicationVersion = 0,
        .verificationEndAddress = 0,
        .verificationStartAddress = 0,
#if HASH_DATA_SIZE != 0U
        .verificationData = 0
#endif
    };
    BL_ApplicationFooterRead(imageId, &workFooterData);
    // Uses only the lower 8-bits
    return workFooterData.applicationId & 0xFF;
}

uint8_t BL_ApplicationExecutionIdGet(uint8_t imageId)
{
    bl_footer_data_t workFooterData = {
        .applicationId = 0,
        .applicationVersion = 0,
        .verificationEndAddress = 0,
        .verificationStartAddress = 0,
#if HASH_DATA_SIZE != 0U
        .verificationData = 0
#endif
    };
    BL_ApplicationFooterRead(imageId, &workFooterData);
    // Uses only the upper 8-bits
    return workFooterData.applicationId & 0xFF00;
}

bool BL_ApplicationIsVersionValid(uint32_t imageVersion)
{
    return (imageVersion != 0xFFFFFFFF && imageVersion != 0x00000000);
}

bool BL_ApplicationFooterRead(uint8_t appId, bl_footer_data_t * footerData)
{
    flash_address_t footerAddressStart = BL_ApplicationFooterStartAddressGet(appId);
    bl_mem_result_t readResult = BL_MEM_FAIL;

#if defined(PIC_ARCH) && !defined(_PIC18)
    // PIC16 microcontrollers use 14-bit program memory cells, requiring special functions to read data larger than 14 bits.
    readResult = BL_FlashReadUint16(footerAddressStart, (uint16_t *) & (footerData->applicationId));
    footerAddressStart += PARTITION_ID_DATA_SIZE;
    readResult = BL_FlashReadUint32(footerAddressStart, (uint32_t *) & (footerData->applicationVersion));
    footerAddressStart += VERSION_DATA_SIZE;
    readResult = BL_FlashReadUint32(footerAddressStart, (uint32_t *) & (footerData->verificationEndAddress));
    footerAddressStart += VERIFY_END_ADDRESS_SIZE;
    readResult = BL_FlashReadUint32(footerAddressStart, (uint32_t *) & (footerData->verificationStartAddress));
    footerAddressStart += VERIFY_START_ADDRESS_SIZE;
#if HASH_DATA_SIZE == 4U
    readResult = BL_FlashReadUint32(footerAddressStart, (uint32_t *) & (footerData->verificationData));
#elif HASH_DATA_SIZE == 2U
    readResult = BL_FlashReadUint16(footerAddressStart, (uint16_t *) & (footerData->verificationData));
#elif HASH_DATA_SIZE == 1U
    footerData->verificationData = (uint8_t) FLASH_Read(footerAddressStart);
#else
#endif
#else // AVR and PIC18 can use the standard flash data read
    bl_footer_data_t workFooterData = {
        .applicationId = 0,
        .applicationVersion = 0,
        .verificationEndAddress = 0,
        .verificationStartAddress = 0,
#if HASH_DATA_SIZE != 0U
        .verificationData = 0
#endif
    };
    readResult = BL_FlashRead(footerAddressStart, (flash_data_t *) & workFooterData, sizeof (bl_footer_data_t));
    if (readResult == BL_MEM_PASS)
    {
        footerData->applicationId = workFooterData.applicationId;
        footerData->applicationVersion = workFooterData.applicationVersion;
        footerData->verificationEndAddress = workFooterData.verificationEndAddress;
        footerData->verificationStartAddress = workFooterData.verificationStartAddress;
#if HASH_DATA_SIZE != 0U
        footerData->verificationData = workFooterData.verificationData;
#endif
    }

#endif
    return readResult;
}

#if BL_ANTI_ROLLBACK_ENABLED == 1 

bool BL_ApplicationRollbackCheck(uint8_t imageId)
{
    // Initialize the return value
    bool isTargetVersionNewer = false;
    // Read the id from the requested location which corresponds to the update slot the data should reside in
    uint8_t targetImageId = BL_ApplicationDownloadIdGet(imageId);

    // Perform check if the target location is different than the requested location
    if (targetImageId != imageId)
    {
        // Read the version data held at the requested image location and target update location
        uint32_t newVersion = BL_ApplicationVersionGet(imageId);
        uint32_t oldImageVersion = BL_ApplicationVersionGet(targetImageId);

        // Check validity of the data
        bool oldVersionIsValid = BL_ApplicationIsVersionValid(oldImageVersion);
        bool newVersionIsValid = BL_ApplicationIsVersionValid(newVersion);

        // If both versions are valid
        if (oldVersionIsValid == true && newVersionIsValid == true)
        {
            // Anti-Rollback check
            isTargetVersionNewer = (newVersion > oldImageVersion);
        }
        else if (oldVersionIsValid == false && newVersionIsValid == true)
        {
            // If the target location is not valid and the new version is valid; set status to pass
            isTargetVersionNewer = true;
        }
    }

    return isTargetVersionNewer;
}
#endif
