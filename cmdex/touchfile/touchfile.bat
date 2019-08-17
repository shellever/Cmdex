@echo off

rem winfor
rem 08/07/2018
rem wrapper for type command to implement creating a empty file
rem history
rem 08/07/2018 implement it in command-line
rem testing
rem > touchfile firstme.txt

::echo ----enter touchfile.bat... >> %start_cmd_log_file%

rem todo here
set in_touch_file=%1
type nul > %in_touch_file%

::echo ----exit touchfile.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
