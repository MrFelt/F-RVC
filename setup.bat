@echo off
setlocal

:: Check if Python is available
echo Checking if Python is available...
where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found. Make sure Python is on your system PATH.
    pause
    exit /b 1
)
echo Python found.

:: Get the directory where the batch file is located and remove trailing backslash
echo Getting the current directory...
set "CURRENT_DIR=%~dp0"
set "CURRENT_DIR=%CURRENT_DIR:~0,-1%"
echo Current directory is %CURRENT_DIR%.

:: Check if "venv" directory exists
echo Checking if 'venv' directory exists...
if not exist "%CURRENT_DIR%\venv" (
    echo Creating virtual environment...
    python -m venv "%CURRENT_DIR%\venv"
    if errorlevel 1 (
        echo Failed to create virtual environment.
        pause
        exit /b 1
    )
) else (
    echo Virtual environment already exists.
)

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

:: Install requirements
echo Installing requirements...

:: Install PyTorch, TorchVision, and TorchAudio
echo Installing PyTorch, TorchVision, and TorchAudio...
pip uninstall torch torchvision torchaudio
pip install torch torchvision torchaudio -f https://download.pytorch.org/whl/cu117/torch_stable.html
if errorlevel 1 (
    echo Failed to install PyTorch, TorchVision, and TorchAudio.
    pause
    exit /b 1
)
echo PyTorch, TorchVision, and TorchAudio installed.

pip install -r requirements.txt
if errorlevel 1 (
    echo Failed to install requirements.
    pause
    exit /b 1
)
echo Requirements installed.



:: Done
echo Setup complete.

pause

endlocal
