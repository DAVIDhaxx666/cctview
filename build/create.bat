@echo off
set FNAME=default
set IP=192.168.1.1
set hei=0
set wdh=0

echo What would you name your script?
set /p FNAME=  ? 
echo What is your DVR/NVR's IP Adress
set /p IP=  ? 
:1
echo Please Choose your Window Resolution?
echo ----------------------------------------
echo 1. 1080p ( recommended for 4K Displays )
echo 2. 720p ( recommended for 1080p Displays )
echo 1. 480p ( recommended for 720p Displays )
set /p choice=  ? 
if %choice% == 1 set hei=1920 && set wdh=1080
if %choice% == 2 set hei=1280 && set wdh=720 
if %choice% == 3 set hei=852 && set wdh=480 
cmd /c build.cmd %FNAME% %IP% %hei% %wdh%
msg "%username%" Building completed.


