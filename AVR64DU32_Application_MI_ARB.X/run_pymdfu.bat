REM - @file: run_pymdfu.bat
REM - @description: Batch script that demonstrates the CLI call to initiate a
REM -               DFU using the pymdfu host tool
REM -
REM - @requirements: pymdfu, python
REM ----------------------------------------------------------------------------

REM - Serial Transfer for v2 image
pymdfu update --image Application_Binary_v2.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

REM - Serial Transfer - FAILURE due to Anti-rollback support
REM pymdfu update --image Application_Binary_v1.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

REM - SPI Transfer w/ MCP2210 for v2 image
REM pymdfu update --image Application_Binary_v2.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>

REM - SPI Transfer w/ MCP2210 - FAILURE due to Anti-rollback support
REM pymdfu update --image Application_Binary_v1.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>