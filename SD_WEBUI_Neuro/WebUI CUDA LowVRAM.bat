@echo off
set DIR=%~dp0Depends
cd webui\
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--lowvram --skip-torch-cuda-test

: Fix venv.
copy /y NUL "%~dp0webui\venv\pyvenv.cfg"
echo home = %DIR%\python310>>"%~dp0webui\venv\pyvenv.cfg"
echo include-system-site-packages = false>>"%~dp0webui\venv\pyvenv.cfg"
echo version = 3.10.6>>"%~dp0webui\venv\pyvenv.cfg"

call webui.bat