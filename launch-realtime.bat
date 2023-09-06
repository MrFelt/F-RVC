@echo off
setlocal

set "CURRENT_DIR=%~dp0"
set "CURRENT_DIR=%CURRENT_DIR:~0,-1%"

:: Activate virtual environment
echo Activating virtual environment...
if exist "%CURRENT_DIR%\venv\Scripts\activate" (
    call "%CURRENT_DIR%\venv\Scripts\activate"
    if not defined VIRTUAL_ENV (
        echo Failed to activate virtual environment.
        pause
        exit /b 1
    )
) else (
    echo Activation script not found.
    pause
    exit /b 1
)
echo Virtual environment activated.

python gui_v1.py
pause
