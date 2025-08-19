/*
 * MAIN Generated Driver File
 *
 * @file main.c
 *
 * @defgroup main MAIN
 *
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
 */

/*
� [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip
    software and any derivatives exclusively with Microchip products.
    You are responsible for complying with 3rd party license terms
    applicable to your use of 3rd party software (including open source
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.?
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR
    THIS SOFTWARE.
 */
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/reset/rstctrl.h"
#include <util/delay.h>

/*
    Main application
 */
#include <stdint.h>
#ifdef __XC8__
#include <xc.h>
#endif

volatile const uint16_t
#ifdef __XC8__
__at(0x9FEE)
#endif
applicationId __attribute__((used, section("app_id"))) = 0x00; //EXECUTION SPACE

volatile const uint32_t
#ifdef __XC8__
__at(0x9FF0)
#endif
applicationVersion __attribute__((used, section("app_version"))) = 0x00000100;

volatile const uint32_t
#ifdef __XC8__
__at(0x9FF4)
#endif
verificationEndAddress __attribute__((used, section("crc_end_address"))) = 0x00009FFB;

volatile const uint32_t
#ifdef __XC8__
__at(0x9FF8)
#endif
verificationStartAddress __attribute__((used, section("crc_start_address"))) = 0x00004000;

volatile const uint32_t
#ifdef __XC8__
__at(0x9FFC)
#endif
applicationFooter __attribute__((used, section("application_footer"))) = 0xFFFFFFFF;

static flash_address_t footerSignatureLocation = 0x9FFC;

void BlinkLED(void)
{
    LED_Toggle();
}

int main(void)
{
    SYSTEM_Initialize();
    // delay for some time to give the user some time to connect to a terminal
    _delay_ms(3000);

    TCA0_OverflowCallbackRegister(&BlinkLED);
    ENABLE_INTERRUPTS();

    printf("===================================================\r\n");
    printf("Hello and thank you for downloading and trying out the 8-Bit MDFU Client solution for the AVR64DU32 Curiosity Nano Development Board.\r\n");
    _delay_ms(150);
    printf("===================================================\r\n");
    printf("You should be able to see that the on-board LED is blinking at a continuous rate.\r\nThis blinking LED is being controlled by a timer interrupt.\r\n");
    _delay_ms(250);
    printf("\r\nApplication version 1 is running.\n\rTo pass control to the bootloader code, send the value 'r' over the Data Visualizer Terminal or press and hold the on-board push button.\r\n");

    while (1)
    {
        if (UART1_IsRxReady())
        {
            if (UART1_Read() == 'r')
            {
                flash_address_t erasePageAddress = FLASH_PageAddressGet(footerSignatureLocation);
                nvm_status_t result = FLASH_PageErase(erasePageAddress);

                if (result == NVM_OK)
                {
                    // In this example, we are erasing the footer data to force the bootloader to take control but this process can be customized to fit your needs.
                    printf("Erasing the footer hash... \r\nResetting...\r\n");
                    printf("To test the demo for multi-image and Anti-rollback, pause this terminal and follow the steps in the README.md document to load the application with version 2.\r\n");
                    RSTCTRL_reset();
                }
                else
                {
                    printf("Error: Could not erase the footer data.\r\n");
                }
            }
        }
        else if (BTN_GetValue() == 0U)
        {
            printf("Resetting...\r\n");
            _delay_ms(50);
            RSTCTRL_reset();
        }
    }
}