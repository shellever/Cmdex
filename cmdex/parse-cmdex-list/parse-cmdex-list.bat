@echo off

rem winfor
rem 08/18/2018
rem parse cmdex list from cmd-alias.bat
rem history
rem 08/18/2018 implement it in command-line
rem testing
rem > parse-cmdex-list

::echo ----enter parse-cmdex-list.bat... >> %start_cmd_log_file%

rem todo here
set in_cmd_alias_bat=%start_cmd_root_path%cmdex\cmd-alias.bat

rem just to display cmdex command
::for /f "tokens=2 delims== " %%a in ('findstr doskey %in_cmd_alias_bat%') do (
::    echo %%a
::)

rem cmdex=lscmdex       -- list cmdex
for /f "tokens=2* delims== " %%a in ('findstr "\<cmdex=" %in_cmd_alias_bat%') do (
    rem echo %%a
    echo %%b
)

::echo ----exit parse-cmdex-list.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
