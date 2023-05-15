@echo off
set DATA=%~dp0DATA
set BROWSER=%~dp0Browser

set HKEY_CURRENT_USER=%DATA%\ntuser.dat

set PATH=%BROWSER%;C:\Windows\system32;C:\Windows

set USERNAME=SD_WebUI_Neuro
set COMPUTERNAME=SD_Portable
set LOGONSERVER=\\SD_Portable
set USERDOMAIN=SD_Portable
set USERDOMAIN_ROAMINGPROFILE=SD_Portable

set ALLUSERSPROFILE=%DATA%\ProgramData

set APPDATA=%DATA%\AppData\Roaming
set LOCALAPPDATA=%DATA%\AppData\Local

set CommonProgramFiles=%DATA%\CommonFiles
set CommonProgramFiles(x86)=%DATA%\CommonFiles_x86
set CommonProgramW6432=%DATA%\CommonFiles

set HOMEDRIVE=%~d0%
set HOMEPATH=%~p0%DATA
set USERPROFILE=%DATA%

set MOZ_CRASHREPORTER_DATA_DIRECTORY=%DATA%\MOZ\crash
set MOZ_CRASHREPORTER_EVENTS_DIRECTORY=%DATA%\MOZ\events
set MOZ_CRASHREPORTER_PING_DIRECTORY=%DATA%\MOZ\pings
set MOZ_CRASHREPORTER_RESTART_ARG_0=%BROWSER%\firefox.exe
set MOZ_CRASHREPORTER_STRINGS_OVERRIDE=%BROWSER%\browser\crashreporter-override.ini

set TMP=%DATA%\AppData\Local\Temp
set TEMP=%DATA%\AppData\Local\Temp

set ProgramData=%DATA%\ProgramData
set ProgramFiles=%DATA%\ProgramFiles
set ProgramFiles(x86)=%DATA%\ProgramFiles_x86
set ProgramW6432=%DATA%\ProgramFiles
set PUBLIC=%DATA%\public

cd Browser\

:: --no-deelevate - for activate drag and drop in browser

call firefox.exe -profile "%DATA%\SD_Profile" -P "SD_WebUI_Neuro" "%1"