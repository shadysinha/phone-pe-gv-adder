@echo off
setlocal enabledelayedexpansion

:: Check if vouchers.csv exists
if not exist vouchers.csv (
    echo [ERROR] vouchers.csv not found in this folder!
    pause
    exit /b
)

echo Starting PhonePe Gift Card Automation...
echo ---------------------------------------

:: Iterate through the CSV file
for /f "tokens=1,2 delims=," %%a in (vouchers.csv) do (
    echo Processing Voucher: %%a
    
    :: 1. Click on "Claim Now" to open the input fields
    echo Clicking Claim Now...
    adb shell input tap 820 1196
    timeout /t 2 >nul
    
    :: 2. Tap the Gift Card Code Field
    adb shell input tap 283 715
    timeout /t 1 >nul
    
    :: 3. Type the Voucher Code from CSV
    adb shell input text "%%a"
    timeout /t 1 >nul
    
    :: 4. Tap the PIN Field
    adb shell input tap 215 896
    timeout /t 1 >nul
    
    :: 5. Type the PIN from CSV
    adb shell input text "%%b"
    timeout /t 1 >nul
    
    :: 6. Click on the "Add" / "Confirm" button immediately after PIN
    echo Clicking Add...
    adb shell input tap 678 1075
    
    :: 7. Wait 6 seconds for PhonePe to process the transaction securely
    echo Waiting 6 seconds for processing...
    timeout /t 6 >nul
)

echo ---------------------------------------
echo Done! All PhonePe gift cards processed.
pause