@echo off
set DIR=%~dp0Depends
cd sd-webui-dml\
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--medvram --opt-sub-quad-attention --opt-split-attention --opt-split-attention-v1 --disable-nan-check --always-batch-cond-uncond --sub-quad-q-chunk-size 256 --sub-quad-kv-chunk-size 256 --sub-quad-chunk-threshold 75 --autolaunch

: Fix venv.
copy /y NUL "%~dp0sd-webui-dml\venv\pyvenv.cfg"
echo home = %DIR%\python310>>"%~dp0sd-webui-dml\venv\pyvenv.cfg"
echo include-system-site-packages = false>>"%~dp0sd-webui-dml\venv\pyvenv.cfg"
echo version = 3.10.6>>"%~dp0sd-webui-dml\venv\pyvenv.cfg"

call webui.bat
