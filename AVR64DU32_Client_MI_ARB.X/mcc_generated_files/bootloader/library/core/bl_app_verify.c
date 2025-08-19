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
 * @file        bl_app_verify.c
 * @ingroup     mdfu_client_8bit
 * 
 * @brief       This file contains APIs to support verification of the
 *              application image space.
 */

#include <stdint.h>
#include <stdbool.h>
#include "bl_app_verify.h"
#include "bl_config.h"
#include "../../../nvm/nvm.h"
#include "bl_image_manager.h"

#define CRC_POLYNOMIAL    (0xEDB88320U)
#define CRC_SEED          (0xFFFFFFFFU)
#define CRC_XorOut        (0x00000000U)

static void CRC32_Calculate(flash_address_t startAddress, uint32_t length, uint32_t *crcSeed);
static bl_result_t CRC32_Validate(flash_address_t startAddress, uint32_t length, flash_address_t crcAddress);

#if defined(_PIC18) || defined(AVR_ARCH)

static void CRC32_Calculate(flash_address_t startAddress, uint32_t length, uint32_t *crcSeed)
{
    uint32_t byteIndex;

    for (byteIndex = 0U; byteIndex < length; byteIndex++)
    {
        uint8_t readByte = FLASH_Read((flash_address_t) (startAddress + byteIndex));

        *crcSeed ^= (uint32_t) readByte;

        for (uint8_t bit = 8U; bit > 0U; --bit)
        {
            if ((*crcSeed & 0x01U) != 0U)
            {
                *crcSeed = (*crcSeed >> 1U) ^ CRC_POLYNOMIAL;
            }
            else
            {
                *crcSeed >>= 1U;
            }
        }
    }
    *crcSeed ^= CRC_XorOut;
}
#elif !defined(_PIC18) && defined(PIC_ARCH)

static void CRC32_Calculate(flash_address_t startAddress, uint32_t length, uint32_t *crcSeed)
{
    uint16_t wordIndex;
    uint16_t byteIndex;
    uint8_t byteArr[2];

    for (wordIndex = 0U; wordIndex < length; wordIndex++)
    {
        uint16_t readWord = FLASH_Read((flash_address_t) startAddress + wordIndex);
        byteArr[1] = (uint8_t) (readWord >> 8U);
        byteArr[0] = (uint8_t) readWord;
        // Bring next byte into the checksum.
        for (byteIndex = 0U; byteIndex < 2U; byteIndex++)
        {
            *crcSeed ^= byteArr[byteIndex];
            for (uint8_t bit = 8U; bit > 0U; --bit)
            {
                if ((*crcSeed & 0x01U) != 0U)
                {
                    *crcSeed = (*crcSeed >> 1U) ^ CRC_POLYNOMIAL;
                }
                else
                {
                    *crcSeed >>= 1U;
                }
            }
        }
    }
    *crcSeed ^= CRC_XorOut;
}
#endif

static bl_result_t CRC32_Validate(flash_address_t startAddress, uint32_t length, flash_address_t refAddress)
{
    bl_result_t result = BL_FAIL;
    uint32_t crc = CRC_SEED;

    bool refAddrInsideEvaluatedArea = (((refAddress + 3U) >= startAddress) && (refAddress < (startAddress + length)));
    bool refAddrOutsideFlash = ((refAddress + 3U) >= PROGMEM_SIZE);

    if ((length == 0U) || ((startAddress + length) > PROGMEM_SIZE))
    {
        result = BL_ERROR_INVALID_ARGUMENTS;
    }
    else if (refAddrInsideEvaluatedArea || refAddrOutsideFlash)
    {
        result = BL_ERROR_ADDRESS_OUT_OF_RANGE;
    }
    else
    {
        CRC32_Calculate(startAddress, length, &crc);
#if defined(_PIC18) || defined(AVR_ARCH)
        uint32_t refCRC = (uint32_t) (
                (((uint32_t) FLASH_Read(refAddress))) |
                (((uint32_t) FLASH_Read(refAddress + 1U)) << 8U) |
                (((uint32_t) FLASH_Read(refAddress + 2U)) << 16U) |
                (((uint32_t) FLASH_Read(refAddress + 3U)) << 24U)
                );
#elif !defined(_PIC18) && defined(PIC_ARCH)
        uint32_t refCRC = (uint32_t) (
                (((uint32_t) FLASH_Read(refAddress) & 0x00FFU)) |
                (((uint32_t) FLASH_Read(refAddress + 1U) & 0x00FFU) << 8U) |
                (((uint32_t) FLASH_Read(refAddress + 2U) & 0x00FFU) << 16U) |
                (((uint32_t) FLASH_Read(refAddress + 3U) & 0x00FFU) << 24U)
                );
#endif
        if (refCRC != crc)
        {
            result = BL_ERROR_VERIFICATION_FAIL;
        }
        else
        {
            result = BL_PASS;
        }
    }
    return result;
}

bl_result_t BL_ImageVerify(void)
{
    // The staging area must always be validated when the FTP is connected to the core.
    // Verify the staging area
    bl_result_t verificationStatus = BL_ImageVerifyById(BL_STAGING_IMAGE_ID);

    // The protocol calls for having Anti-Rollback notify the host of the failure in versions at the time of the update
#if BL_ANTI_ROLLBACK_ENABLED == 1
    if (verificationStatus == BL_PASS)
    {
        // Perform rollback check on the data held at the staging area
        if (BL_ApplicationRollbackCheck((uint8_t) BL_STAGING_IMAGE_ID) == true)
        {
            verificationStatus = BL_PASS;
        }
        else
        {
            verificationStatus = BL_ERROR_ROLLBACK_FAILURE;
        }
    }
#endif
    return verificationStatus;
}

bl_result_t BL_ImageVerifyById(uint8_t installLocationId)
{
    bl_result_t result = BL_ERROR_VERIFICATION_FAIL;

    bl_footer_data_t footerData;
    BL_ApplicationFooterRead(installLocationId, &footerData);

    flash_address_t footerStartAddress = BL_ApplicationFooterStartAddressGet(installLocationId);
    uint32_t hashLength = ((footerData.verificationEndAddress + 1U) - footerData.verificationStartAddress);

    if (footerData.verificationStartAddress == 0 ||
        hashLength == 0 ||
        installLocationId > (BL_APPLICATION_IMAGE_COUNT - 1U)
    )
    {
        result = BL_ERROR_INVALID_ARGUMENTS;
    }
    else
    {
        if (installLocationId != IMAGE_0)
        {
             //Recalculating start address to verify the staging area 
            //This mathematical relation will be consistent as long as the execution image starts at BL_APPLICATION_START_ADDRESS and the sizes of the image areas are the same
            footerData.verificationStartAddress += ((uint8_t) (installLocationId & 0x00FF) * (uint32_t) BL_IMAGE_PARTITION_SIZE);
        } 
        result = CRC32_Validate((flash_address_t) footerData.verificationStartAddress, hashLength, (footerStartAddress + HASH_DATA_OFFSET));
    }
    return result;
}