@echo off

rem winfor
rem 08/02/2018
rem run apktool.jar with script
rem history
rem 08/02/2018 implement it in command-line
rem testing
rem > apktool ECPPad-release.apk
rem > apktool ECPPad-release.apk ECPPad

::echo ----enter apktool.bat... >> %start_cmd_log_file%

rem todo here
set in_apktool_root_path=%~dp0
set in_apktool_jar=%in_apktool_root_path%apktool_2.0.1.jar

set origin_apk=%1
if not exist "%origin_apk%" (
    echo file no exist: %origin_apk%
    goto exit_me
)

set output_dir=%2
if "%output_dir%" == "" (
    set output_dir=output
)

java -jar %in_apktool_jar% d -o %output_dir% -f %origin_apk%
echo ---------------------------
echo apkfile: %origin_apk%
echo outdir: %output_dir%

::echo ----exit apktool.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
::echo Press any key to continue...
::pause>nul
