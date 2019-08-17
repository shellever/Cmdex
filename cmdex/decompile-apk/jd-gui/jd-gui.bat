@echo off

rem winfor
rem 08/02/2018
rem run jd-gui.exe with script
rem history
rem 08/02/2018 implement it in command-line
rem testing
rem > jd-gui classes-dex2jar.jar
rem > jd-gui

::echo ----enter jd-gui.bat... >> %start_cmd_log_file%

rem todo here
set in_jd_gui_root_path=%~dp0
set in_jd_gui_exe=%in_jd_gui_root_path%jd-gui-windows-1.3.0\jd-gui.exe

rem if set %1 to dex2jar_jar, jd-gui will find it in jd-gui.exe path,
rem then it will take a error. so set %~f1 to dex2jar_jar variable.
set dex2jar_jar=%~f1
echo dex2jar_jar=%dex2jar_jar%

rem start to preview it
%in_jd_gui_exe% %dex2jar_jar%

::echo ----exit jd-gui.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
