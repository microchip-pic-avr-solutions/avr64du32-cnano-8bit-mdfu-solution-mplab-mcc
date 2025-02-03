REM - @file: run_pymdfu.bat
REM - @description: Batch script that demonstrates the CLI call to initiate a
REM -               DFU using the pymdfu host tool
REM -
REM - @requirements: pymdfu, python
REM ----------------------------------------------------------------------------

REM - Serial Transfer
pymdfu update --image Application_Binary.img -v debug --tool serial --baudrate 115200 --port <COM PORT NAME>

REM - SPI Transfer w/ MCP2210
REM pymdfu update --image Application_Binary.img -v debug --tool mcp2210 --clk-speed 500000 --chip-select <#>