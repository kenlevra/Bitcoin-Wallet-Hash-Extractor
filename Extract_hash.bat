@echo off
chcp 65001 >nul
echo ========================================
echo  Extract hash from all wallet.dat
echo ========================================

setlocal enabledelayedexpansion

set "errorcount=0"

for %%f in (*.dat) do (
    echo.
    echo Elaboration file: %%f
    
    echo %%f >> processed_files.txt
    
    python bitcoin2john.py "%%f" >> all_hashes.txt 2>> temp_error.txt
    
    findstr /r /c:"Error" /c:"Traceback" /c:"Exception" /c:"unable to open" /c:"OperationalError" temp_error.txt >nul
    if !errorlevel! equ 0 (
        echo %%f >> errors.txt
        echo   ERROR for the file: %%f
        set /a errorcount+=1
    ) else (
        echo   OK
    )
    
    del temp_error.txt 2>nul
)

echo.
echo ========================================
echo  FINISHED!
echo  Hash extracted: all_hashes.txt
echo  File error: errors.txt   (%errorcount% error founded)
echo  All file processed: processed_files.txt
echo ========================================
pause
