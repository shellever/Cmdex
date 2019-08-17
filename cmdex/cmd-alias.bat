@echo off

rem winfor
rem 07/30/2018
rem define some alias that linux-like command
rem history
rem 07/31/2018 add vi alias
rem 08/01/2018 add mv alias
rem 08/02/2018 
rem add cat alias
rem create apktool batch script and add its alias
rem create dex2jar batch script and add its alias
rem create jd-gui  batch script and add its 
rem 08/07/2018 add touch alias
rem 08/07/2018 add findx alias
rem 08/11/2018 add protocj alias
rem 08/18/2018 
rem add lscmdex alias
rem add regular comments for parse-cmdex-list.bat parsing
rem 08/22/2018 add cdw alias

echo ----enter cmd-alias.bat... >> %start_cmd_log_file%

rem Alias for Windows commands
rem cmdex=man           -- provides help information for commands
doskey man=help $*
rem cmdex=cd            -- changes the current directory with drive:
doskey cd=cd /d $*
rem cmdex=ls            -- displays a list of files and subdirectories in a directory
doskey ls=dir /b $*
rem cmdex=l             -- the same as ls
doskey l=dir /od/p/q/tw $*
rem cmdex=cp            -- copy one or more files to another location
doskey cp=copy $*
rem cmdex=rm            -- delete one or more files
doskey rm=del /q/s $*
rem cmdex=vi            -- alias for gVim
doskey vi=vim $*
rem cmdex=mv            -- rename file or directory
doskey mv=rename $*
rem cmdex=cat           -- display the contents of a text file or files
doskey cat=type $*

rem Alias for shortcuts
rem cmdex=cdw           -- changes the current directory into D:\workdpace
doskey cdw=cd /d D:\workspace

rem Alias for batch scripts
rem cmdex=apktool       -- decode resources for Android apps
set decompile_apk_root_path=%start_cmd_root_path%cmdex\decompile-apk\
set apktool_bat=%decompile_apk_root_path%apktool\apktool.bat
doskey apktool=%apktool_bat% $*
rem cmdex=dex2jar       -- tools to work with android .dex and java .class files
set dex2jar_bat=%decompile_apk_root_path%dex2jar\dex2jar.bat
doskey dex2jar=%dex2jar_bat% $*
rem cmdex=jd-gui        -- java decompiler for display java source codes of .class files
set jd_gui_bat=%decompile_apk_root_path%jd-gui\jd-gui.bat
doskey jd-gui=%jd_gui_bat% $*

rem cmdex=touch         -- create a empty file, like touch in linux
set touchfile_bat=%start_cmd_root_path%cmdex\touchfile\touchfile.bat
doskey touch=%touchfile_bat% $*

rem cmdex=findx         -- find file using everything search engine
set es_bat=%start_cmd_root_path%cmdex\everything-search\es.bat
doskey findx=%es_bat% $*

rem cmdex=protocj       -- protobuf compiler for Java
set protoc_java_bat=%start_cmd_root_path%cmdex\protoc-java\protoc-java.bat
doskey protocj=%protoc_java_bat% $*

rem cmdex=lscmdex       -- list cmdex
set parse_cmd_list_bat=%start_cmd_root_path%cmdex\parse-cmdex-list\parse-cmdex-list.bat
doskey lscmdex=%parse_cmd_list_bat% $*

echo ----exit cmd-alias.bat... >> %start_cmd_log_file%
