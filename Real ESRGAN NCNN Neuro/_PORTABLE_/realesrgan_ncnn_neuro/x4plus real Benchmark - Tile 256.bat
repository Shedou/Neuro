@echo off
set TIMESTART=%time%
@echo Start time: %TIMESTART%
@echo on
realesrgan-ncnn-vulkan.exe -t 256 -i %1 -o %~n1-x4r.jpg -n realesrgan-x4plus -s 4
@echo off
set TIMEEND=%time%
@echo - Completed -
@echo .
@echo Start time: %TIMESTART%
@echo End time: %TIMEEND%
set /A TIMESTART=(1%TIMESTART:~0,2%-100)*360000 + (1%TIMESTART:~3,2%-100)*6000 + (1%TIMESTART:~6,2%-100)*100 + (1%TIMESTART:~9,2%-100)
set /A TIMEEND=(1%TIMEEND:~0,2%-100)*360000 + (1%TIMEEND:~3,2%-100)*6000 + (1%TIMEEND:~6,2%-100)*100 + (1%TIMEEND:~9,2%-100)

set /A TIMEALL=%TIMEEND%-%TIMESTART%

set /A TIMEHOUR=%TIMEALL% / 360000
set /A TIMEMIN=(%TIMEALL% - %TIMEHOUR%*360000) / 6000
set /A TIMESEC=(%TIMEALL% - %TIMEHOUR%*360000 - %TIMEMIN%*6000) / 100
set /A TIMEMSEC=(%TIMEALL% - %TIMEHOUR%*360000 - %TIMEMIN%*6000 - %TIMESEC%*100)

@echo GitHub: https://github.com/Shedou/Neuro
@echo .
@echo Tile size: 256
@echo Model: realesrgan-x4plus
@echo File: "%~nx1"
@echo Result (lower time is better): %TIMESEC%,%TIMEMSEC% Seconds
pause