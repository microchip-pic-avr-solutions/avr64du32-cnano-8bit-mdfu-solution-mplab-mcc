#!/bin/sh
# - File: postBuild.sh
# - Description: Shell script that is executed by MPLAB X after building
# -               the various configurations included in this solution. 
# - Requirements: pyfwimagebuilder, python, hexmate
# - Arguments:
# -   $1 - Debug mode flag. 'true' when building in debug mode.
# -   $2 - Application project name.
# -   $3 - Path to the build folder.
# -   $4 - Image type being built.
# -   $5 - String given by command line to indicate if a combined image
# -        is being built.
# ----------------------------------------------------------------------------

# - Check to see if we are building a combined configuration
if [ "$5" = "COMBINED" ]; then
    IS_COMBINED=true
else
    IS_COMBINED=false
fi
COMBINED_IMAGE_PATH="$3/$2.X.$4.unified.hex"

# - create variables from given arguments
if [ "$1" = "" ]; then
    IS_DEBUG=false
else 
    IS_DEBUG=$1
fi
if [ "$2" = "" ]; then
    INPUT_IMAGE_PATH="./dist/Standalone_xc8/production/AVR64DU32_Application.X.production.hex"
else
    INPUT_IMAGE_PATH="$3/$2.X.$4.hex"
fi

# - relative path to client config file
CONFIG_FILE_PATH="../AVR64DU32_Client_Basic.X/mcc_generated_files/bootloader/configurations/bootloader_configuration.toml"
OUTPUT_IMAGE_PATH="./Application_Binary.img"

# - Ensure pyfwimagebuilder is installed
if ! python -c "import pyfwimagebuilder" &> /dev/null; then
    echo "pyfwimagebuilder not found, installing..."
    pip install pyfwimagebuilder
fi

if [ "$IS_DEBUG" = false ]; then
    # - Fill the empty application data
    hexmate r0-FFFFFFFF,$INPUT_IMAGE_PATH -O$INPUT_IMAGE_PATH -FILL=w1:0xFF@0x4000:0xFFFF

    # - Calculate the checksum over the application space 
    hexmate $INPUT_IMAGE_PATH -O$INPUT_IMAGE_PATH +-CK=4000-FFFB@FFFC+FFFFFFFFg-5w-4p04C11DB7

    # - Build the application binary
    pyfwimagebuilder build -i $INPUT_IMAGE_PATH -c $CONFIG_FILE_PATH -o $OUTPUT_IMAGE_PATH

    # - Update the unified hex file for the COMBINED configuration
    if [ $IS_COMBINED = true ]; then
        hexmate r4000-1FFFF,$INPUT_IMAGE_PATH r0-3FFF,$COMBINED_IMAGE_PATH -O$COMBINED_IMAGE_PATH
    fi
else
    # - When building in debug mode we cannot run hexmate operations
    echo "Warning - Post Build Process was Skipped."
    echo "Warning - Application is being built in Debug mode."
fi