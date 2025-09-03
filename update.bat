@echo off
:: -----------------------------------------
:: File URLs
set "url1=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/VleHub.exe"
set "url2=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/sms.mp3"
set "url3=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/chromedriver.exe"
set "url4=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/WebDriver.dll"
set "url5=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/WebDriver.Support.dll"
:: -----------------------------------------

:: Download function using PowerShell Invoke-WebRequest
:download
echo Downloading %~nx1...
powershell -NoLogo -NoProfile -Command "Invoke-WebRequest -Uri '%~1' -OutFile '%~2'"
if exist "%~2" (
    echo Downloaded: %~nx2%
) else (
    echo Failed to download: %~1
)
echo.
exit /b

:: Download all files
call :download %url1% "%~dp0VleHub.exe"
call :download %url2% "%~dp0sms.mp3"
call :download %url3% "%~dp0chromedriver.exe"
call :download %url4% "%~dp0WebDriver.dll"
call :download %url5% "%~dp0WebDriver.Support.dll"

:: Run main executable
start "" "%~dp0VleHub.exe"

exit /b
