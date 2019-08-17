@echo off

rem winfor
rem 08/02/2018
rem run d2j-dex2jar.bat with script
rem history
rem 08/02/2018 implement it in command-line
rem testing
rem > dex2jar ECPPad-release.apk
rem > dex2jar classes.dex

::echo ----enter dex2jar.bat... >> %start_cmd_log_file%

rem todo here
set in_dex2jar_root_path=%~dp0
set in_d2j_dex2jar_bat=%in_dex2jar_root_path%dex2jar-2.0\d2j-dex2jar.bat

rem check file
set apk_dex=%1
echo apk_dex=%apk_dex%
if "%apk_dex%" == "" (
    echo please specify a file [*.dex or *.apk]
    ::echo please specify a file (*.dex or *.apk)
    goto exit_me
)

rem check file extension
set in_ext=%~x1
echo in_ext=%in_ext%
if not "%in_ext%" == ".dex" (
    if not "%in_ext%" == ".apk" (
        echo please specify the file [*.dex or *.apk]
        goto exit_me
    )
)

rem extract dex if apk specified
if "%in_ext%" == ".apk" (
    echo extract dex from %apk_dex%
    jar xf %apk_dex% classes.dex
    if not exist "classes.dex" (
        echo classes.dex not in %apk_dex%, please specify dex manually
        goto exit_me
    )
    set apk_dex=classes.dex
)

rem start to convert dex into jar
%in_d2j_dex2jar_bat% %apk_dex%

::echo ----exit dex2jar.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
