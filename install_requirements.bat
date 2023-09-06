@echo off

:: Update packages via requirements.txt
echo Installing requirements...
%~dp0\runtime\python -m pip install -r requirements.txt

:: End text
echo Requirements installed, run go-web.bat

:: Pause for user input
pause