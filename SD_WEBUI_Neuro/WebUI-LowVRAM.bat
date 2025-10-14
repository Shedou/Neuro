@echo off
set DIR=%~dp0Depends
cd webui1101\
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set TORCH_HOME=%DIR%\cache_dependencies
set HF_HOME=%DIR%\cache\huggingface
set PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

set USERNAME=SDwebUINeuro
set HOMEPATH=%DIR%\Home
set USERPROFILE=%DIR%\Home
set APPDATA=%DIR%\Home\AppData\Roaming
set LOCALAPPDATA=%DIR%\Home\AppData\Local
set TMP=%DIR%\Temp
set TEMP=%DIR%\Temp

set GIT_SSL_NO_VERIFY=true

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--skip-prepare-environment --no-download-sd-model --lowvram --skip-torch-cuda-test --skip-version-check

: Fix venv.
copy /y NUL "%~dp0webui1101\venv\pyvenv.cfg"
echo home = %DIR%\python310>>"%~dp0webui1101\venv\pyvenv.cfg"
echo include-system-site-packages = false>>"%~dp0webui1101\venv\pyvenv.cfg"
echo version = 3.10.6>>"%~dp0webui1101\venv\pyvenv.cfg"

git config --global safe.directory '*'
call webui.bat

pause
