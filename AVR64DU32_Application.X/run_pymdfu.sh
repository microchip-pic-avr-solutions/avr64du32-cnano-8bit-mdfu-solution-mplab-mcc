#!/bin/sh
# - File: run_pymdfu.sh
# - Description: Shell script that demonstrates the CLI call to initiate a
# -               DFU using the pymdfu host tool
# -
# - Requirements: pymdfu, python
# ----------------------------------------------------------------------------

# - Serial Transfer
pymdfu update --image Application_Binary.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

# - SPI Transfer w/ MCP2210
# pymdfu update --image Application_Binary.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>
