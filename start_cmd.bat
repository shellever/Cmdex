@echo off

rem winfor
rem 05/17/2018
rem start cmd and setup prompt of command window
rem history
rem 07/30/2018 delegate cmdex-load.bat to load scripts
rem 08/02/2018 modify variable name

setlocal


rem specify log file
set start_cmd_root_path=%~dp0
set start_cmd_log_file=%start_cmd_root_path%start_cmd.log

echo %date% %time% > %start_cmd_log_file%

rem delegate cmdex-load.bat to load batch scripts in cmdex directory
echo call cmdex-load.bat >> %start_cmd_log_file%
call %start_cmd_root_path%cmdex\cmdex-load.bat

rem change the command line prompt
echo change the command line prompt >> %start_cmd_log_file%
prompt $P$_$G$S

rem clear the screen
echo clear the screen >> %start_cmd_log_file%
cls

rem start a new life for cmd
echo start a new cmd >> %start_cmd_log_file%
call cmd


endlocal

::exit
