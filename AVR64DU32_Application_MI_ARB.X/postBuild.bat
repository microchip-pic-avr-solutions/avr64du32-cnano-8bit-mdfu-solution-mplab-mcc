REM - @file: postBuild.bat
REM - @description: Batch script that is executed by MPLAB X after building
REM -               the various configurations included in this solution. 
REM - @requirements: pyfwimagebuilder, python, hexmate
REM - @arguments:
REM -   %1 - Debug mode flag. 'true' when building in debug mode.
REM -   %2 - Application project name.
REM -   %3 - Path to the build folder.
REM -   %4 - Image type being built.
REM -   %5 - String given by command line to indicate if a combined image
REM -        is being built.
REM ----------------------------------------------------------------------------

REM - Check to see if we are building a combined configuration
set IS_COMBINED='%5' == 'COMBINED'
set COMBINED_IMAGE_PATH=%3\%2.X.%4.unified.hex

REM - create variables from given arguments
if "%1"=="" (set IS_DEBUG=false) else (set IS_DEBUG=%1)
if "%2"=="" (set INPUT_IMAGE_PATH=".\dist\Standalone_xc8\production\AVR64DU32_Application_MI_ARB.X.production.hex") else (set INPUT_IMAGE_PATH=%3\%2.X.%4.hex)
REM - relative path to client config file
set CONFIG_FILE_PATH="..\AVR64DU32_Client_MI_ARB.X\mcc_generated_files\bootloader\configurations\bootloader_configuration.toml"
set OUTPUT_IMAGE_PATH=".\Application_Binary_v1.img"

REM - Ensure pyfwimagebuilder is installed
WHERE pyfwimagebuilder >nul 2>nul

if %ERRORLEVEL% NEQ 0 (
    ECHO "pyfwimagebuilder not found, installing..."
    pip install pyfwimagebuilder
)

if %IS_DEBUG% == false (
    REM - Fill the empty application data
    hexmate r0-FFFFFFFF,%INPUT_IMAGE_PATH% -O%INPUT_IMAGE_PATH% -FILL=w1:0xFF@0x4000:0x9FFF
    
    REM - Calculate the checksum over the application space 
    hexmate %INPUT_IMAGE_PATH% -O%INPUT_IMAGE_PATH% +-CK=4000-9FFB@9FFC+FFFFFFFFg-5w-4p04C11DB7

    REM - Build the application binary
    pyfwimagebuilder build -i %INPUT_IMAGE_PATH% -c %CONFIG_FILE_PATH% -o %OUTPUT_IMAGE_PATH%

    REM - Update the unified hex file for the COMBINED configuration
    if %IS_COMBINED% hexmate r4000-1FFFF,%INPUT_IMAGE_PATH% r0-3FFF,%COMBINED_IMAGE_PATH% -O%COMBINED_IMAGE_PATH%
) else (
    REM - When building in debug mode we cannot run hexmate operations
    echo "Warning - Post Build Process was Skipped."
    echo "Warning - Application is being built in Debug mode."
)