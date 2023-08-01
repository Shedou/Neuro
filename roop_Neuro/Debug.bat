@echo off

::::::::::: Setting variables, please do not change unless you understand what you are doing!

set DIR=%~dp0Depends
set PATH=C:\Windows\system32;C:\Windows;%DIR%\git\bin;%DIR%\python310;%DIR%\python310\Scripts;%DIR%\ffmpeg-6.0-full_build-shared\bin
set TRANSFORMERS_CACHE=%DIR%\transformers-cache

set GIT_SSL_NO_VERIFY=true





::::::::::: Uncomment the examples and modify as you wish.


:::::: Install/Uninstall Python modules, see file "Commands_accel.txt".
: python -m pip install onnxruntime-directml==1.15.1
: python -m pip uninstall onnxruntime onnxruntime-directml


:::::: Go to the folder "roop" and run the program, see file "Commands.txt".
: cd roop\
: python run.py --execution-provider dml





ECHO Edit this file if needed.
pause