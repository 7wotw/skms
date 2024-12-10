@echo off

NET SESSION >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script needs to be run as an administrator.
    pause
    exit /b
)

:menu
cls
echo =======================
echo Select your product:
echo =======================
echo 1. Windows 10
echo 2. Windows 11
echo 3. Office
echo =======================
set /p windows="Enter your choice (1-2): "
if "%windows%"=="1" goto win10
if "%windows%"=="2" goto win11
if "%windows%"=="3" goto office
echo Invalid choice. Please try again.
pause
goto menu

:win10
cls
start wt.bat
goto end

:win11
cls
start we.bat
goto end

:office
cls
start oas.bat
goto end

:end
echo [LOG] Script has finished!
echo [LOG] If Windows or Office still has not been activated, try selecting a different version of Windows or rerun the script.
echo [LOG] Report any errors to the GitHub repo.
echo [LOG] https://github.com/7wotw/skms

pause
