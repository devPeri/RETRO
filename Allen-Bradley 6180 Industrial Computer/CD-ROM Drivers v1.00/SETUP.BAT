@echo off
if not exist c:\dos\mscdex.exe echo "could not find the file mscdex.exe in your dos subdirectory"
if not exist c:\dos\mscdex.exe echo "please make sure the file mscdex.exe is located in your dos subdirectory"
if exist c:\dos\mscdex.exe goto start
goto end
:start
copy c:\dos\mscdex.exe  
tosh
:end
