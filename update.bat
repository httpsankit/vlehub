@echo off
:: -----------------------------------------
:: URLs to download
set "url1=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/VleHub.exe"
set "url2=https://raw.githubusercontent.com/httpsankit/Sahaj/refs/heads/main/sms.mp3"
:: -----------------------------------------

:: Extract file names from URLs
for %%I in ("%url1%") do set "filename1=%%~nxI"
for %%I in ("%url2%") do set "filename2=%%~nxI"

:: Set destination paths (current folder)
set "output1=%~dp0%filename1%"
set "output2=%~dp0%filename2%"

echo Downloading files...
echo.

:: Download first file
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url1%' -Destination '%output1%'"

:: Download second file
powershell -NoLogo -NoProfile -Command "Start-BitsTransfer -Source '%url2%' -Destination '%output2%'"

echo.
echo Download complete!

:: Run the exe
start "" "%output1%"

:: Exit immediately (close batch window)
exit /b
