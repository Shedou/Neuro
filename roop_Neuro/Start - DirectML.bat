@echo off
set DATA=%~dp0DATA
set APPDATA=%DATA%\AppData\Roaming
set LOCALAPPDATA=%DATA%\AppData\Local
set HOMEDRIVE=%~d0%
set HOMEPATH=%~p0%DATA
set USERPROFILE=%DATA%

set DIR=%~dp0Depends
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true

cd roop\

python run.py --execution-provider dml