@echo off
set DIR=%~dp0Depends
cd webui\
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--precision full --no-half --skip-torch-cuda-test --autolaunch

: Check Windows version.
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
: Use cudart64 v11.4 for Windows 7, 8, 8.1
if "%version%" == "6.1" copy /y "%~dp0\Redist\CUDA_Win7\cudart64_110.dll" "%~dp0\webui\venv\Lib\site-packages\torch\lib\"
if "%version%" == "6.2" copy /y "%~dp0\Redist\CUDA_Win7\cudart64_110.dll" "%~dp0\webui\venv\Lib\site-packages\torch\lib\"
if "%version%" == "6.3" copy /y "%~dp0\Redist\CUDA_Win7\cudart64_110.dll" "%~dp0\webui\venv\Lib\site-packages\torch\lib\"

: Use cudart64 v11.7 for Windows 10/11

if "%version%" == "10.0" copy /y "%~dp0\Redist\CUDA_Win10\cudart64_110.dll" "%~dp0\webui\venv\Lib\site-packages\torch\lib\"
: !!!===!!! comment the top line and uncomment the bottom line to use the experimental cudart64 v12.1.
: if "%version%" == "10.0" copy /y "%~dp0\Redist\CUDA_v12\cudart64_110.dll" "%~dp0\webui\venv\Lib\site-packages\torch\lib\"

: Fix venv.
copy /y NUL "%~dp0webui\venv\pyvenv.cfg"
echo home = %DIR%\python310>>"%~dp0webui\venv\pyvenv.cfg"
echo include-system-site-packages = false>>"%~dp0webui\venv\pyvenv.cfg"
echo version = 3.10.6>>"%~dp0webui\venv\pyvenv.cfg"

call webui.bat