@echo off
set FNAME=%1
set IP=%2
set HEI=%3
set WDH=%4
if exist %cd%/DIST/ (
cd DIST
) else (
mkdir DIST
cd DIST
)
echo Set CCTView = CreateObject("InternetExplorer.Application") >> %FNAME%.vbs
echo With CCTView >> %FNAME%.vbs
echo    .Navigate "%IP%" >> %FNAME%.vbs 
echo    .Visible = True >> %FNAME%.vbs
echo    .Toolbar=False >> %FNAME%.vbs
echo    .Statusbar=False >> %FNAME%.vbs
echo    .Left=0 >> %FNAME%.vbs
echo    .Top=0 >> %FNAME%.vbs
echo    .Width=%HEI% >> %FNAME%.vbs
echo    .Height=%WDH% >> %FNAME%.vbs
echo End With >> %FNAME%.vbs
cd ..
