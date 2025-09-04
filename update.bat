@echo off
:: -----------------------------------------
:: URLs to download
set "url1=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/VleHub.exe"
set "url2=https://raw.githubusercontent.com/httpsankit/Sahaj/refs/heads/main/sms.mp3"
set "url3=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/chromedriver.exe"
set "url4=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/WebDriver.dll"
set "url5=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/WebDriver.Support.dll"
:: -----------------------------------------

:: Extract file names from URLs
for %%I in ("%url1%") do set "filename1=%%~nxI"
for %%I in ("%url2%") do set "filename2=%%~nxI"
for %%I in ("%url3%") do set "filename3=%%~nxI"
for %%I in ("%url4%") do set "filename4=%%~nxI"
for %%I in ("%url5%") do set "filename5=%%~nxI"

:: Set destination paths (current folder)
set "output1=%~dp0%filename1%"
set "output2=%~dp0%filename2%"
set "output3=%~dp0%filename3%"
set "output4=%~dp0%filename4%"
set "output5=%~dp0%filename5%"

echo Downloading files...
echo.

:: Download all files using BITS
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url1%' -Destination '%output1%'"
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url2%' -Destination '%output2%'"
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url3%' -Destination '%output3%'"
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url4%' -Destination '%output4%'"
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url5%' -Destination '%output5%'"

echo.
echo Download complete!

:: Run the main executable
start "" "%output1%"

:: Exit immediately (close batch window)
exit /b
