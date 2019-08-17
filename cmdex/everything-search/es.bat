@echo off

rem winfor
rem 08/07/2018
rem wrapper for es.exe to implement find command
rem history
rem 08/07/2018 implement it in command-line
rem testing
rem > es firstme.txt
rem > es D:\download firstme.txt
rem > es cmdex | findstr es

::echo ----enter es.bat... >> %start_cmd_log_file%

rem todo here
set in_es_root_path=%~dp0
set in_es_exe=%in_es_root_path%es.exe

rem assume that input two args by default.
set in_search_path=%1
set in_search_text=%2

::SETLOCAL ENABLEDELAYEDEXPANSION
set argc=0
for %%a in (%*) do (
    rem ::echo argc = %argc%
    set /a argc+=1
    rem ::echo argc = !argc!
)
::ENDLOCAL

rem check if input one arg only
if "%argc%" == "1" (
    set in_search_path="%cd%"
    set in_search_text=%1
)

rem call es.exe
%in_es_exe% %in_search_text% -p %in_search_path%

::echo ----exit es.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
