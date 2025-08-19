#!/bin/sh
# - File: run_pymdfu.sh
# - Description: Shell script that demonstrates the CLI call to initiate a
# -               DFU using the pymdfu host tool
# -
# - Requirements: pymdfu, python
# ----------------------------------------------------------------------------

# - Serial Transfer for v2 image
pymdfu update --image Application_Binary_v2.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

# - Serial Transfer - FAILURE due to Anti-rollback support
# pymdfu update --image Application_Binary_v1.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

# - SPI Transfer w/ MCP2210 for v2 image
# pymdfu update --image Application_Binary_v2.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>

# - SPI Transfer w/ MCP2210 - FAILURE due to Anti-rollback support
# pymdfu update --image Application_Binary_v1.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>
