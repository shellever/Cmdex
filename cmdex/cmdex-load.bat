@echo off

rem winfor
rem 07/30/2018
rem load cmd extentive batch script for some specified functions.

echo --enter cmdex-load.bat... >> %start_cmd_log_file%

rem load system variables
::echo --load cmd-vars.bat >> %start_cmd_log_file%
::set start_cmd_vars_path=
::call %start_cmd_root_path%cmdex\cmd-vars.bat
::set PATH=%start_cmd_vars_path%;%PATH%

rem load alias
echo --load cmd-alias.bat >> %start_cmd_log_file%
call %start_cmd_root_path%cmdex\cmd-alias.bat

rem load other
::echo load other.bat >> %start_cmd_log_file%
::call %start_cmd_root_path%cmdex\cmd-other.bat

echo --exit cmdex-load.bat... >> %start_cmd_log_file%
