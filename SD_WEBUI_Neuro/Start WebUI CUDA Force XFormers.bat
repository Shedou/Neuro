@echo off
set DIR=%~dp0Depends
cd webui132\
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--skip-prepare-environment --skip-torch-cuda-test --xformers --force-enable-xformers 

: Fix venv.
copy /y NUL "%~dp0webui132\venv\pyvenv.cfg"
echo home = %DIR%\python310>>"%~dp0webui132\venv\pyvenv.cfg"
echo include-system-site-packages = false>>"%~dp0webui132\venv\pyvenv.cfg"
echo version = 3.10.6>>"%~dp0webui132\venv\pyvenv.cfg"

call webui.bat

pause