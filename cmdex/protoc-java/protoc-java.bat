@echo off

rem winfor
rem 08/11/2018
rem protoc for genning java file
rem history
rem 08/11/2018 implement it in command-line
rem testing
rem > protoc-java protocol.proto

::echo ----enter protoc-java.bat... >> %start_cmd_log_file%

rem todo here
set in_proto_file=%1
protoc --java_out=. %in_proto_file%

::echo ----exit protoc-java.bat... >> %start_cmd_log_file%

:exit_me
rem output a new line
echo.
