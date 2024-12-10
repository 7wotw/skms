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
echo Select Windows version:
echo =======================
echo 1. Windows 10
echo 2. Windows 11
echo =======================
set /p windows="Enter your choice (1-2): "
if "%windows%"=="1" goto win10
if "%windows%"=="2" goto win11
echo Invalid choice. Please try again.
pause
goto menu

:win10
cls
echo =======================
echo Select Windows 10 edition:
echo =======================
echo 1. Home
echo 2. Home N
echo 3. Home Single Language
echo 4. Home Country Specific
echo 5. Professional
echo 6. Professional N
echo 7. Education
echo 8. Education N
echo 9. Enterprise
echo 10. Enterprise N
echo =======================
set /p edition="Enter your choice (1-10): "

echo [LOG] Installing the license key...
if "%edition%"=="1" (
    slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
)
if "%edition%"=="2" (
    slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
)
if "%edition%"=="3" (
    slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
)
if "%edition%"=="4" (
    slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
)
if "%edition%"=="5" (
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
)
if "%edition%"=="6" (
    slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
)
if "%edition%"=="7" (
    slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
)
if "%edition%"=="8" (
    slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
)
if "%edition%"=="9" (
    slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
)
if "%edition%"=="10" (
    slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
)
echo [LOG] Setting KMS machine adress...
slmgr /skms kms8.msguides.com
echo [LOG] Activating...
slmgr /ato
goto end

:win11
cls
echo =======================
echo Select Windows 11 edition:
echo =======================
echo 1. Home
echo 2. Home N
echo 3. Home Single Language
echo 4. Home Country Specific
echo 5. Professional
echo 6. Professional N
echo 7. Education
echo 8. Education N
echo 9. Enterprise
echo 10. Enterprise N
echo =======================
set /p edition="Enter your choice (1-10): "

echo [LOG] Installing the license key...
if "%edition%"=="1" (
    slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
)
if "%edition%"=="2" (
    slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
)
if "%edition%"=="3" (
    slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
)
if "%edition%"=="4" (
    slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
)
if "%edition%"=="5" (
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
)
if "%edition%"=="6" (
    slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
)
if "%edition%"=="7" (
    slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
)
if "%edition%"=="8" (
    slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
)
if "%edition%"=="9" (
    slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
)
if "%edition%"=="10" (
    slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
)
echo [LOG] Setting KMS machine adress...
slmgr /skms kms8.msguides.com
echo [LOG] Activating...
slmgr /ato
goto end

:end
echo [LOG] Script has finished!
echo [LOG] If Windows still has not been activated, try selecting a different version of Windows or rerun the script.
echo [LOG] Report any errors to the GitHub repo.
echo [LOG] https://github.com/7wotw/skms

pause
