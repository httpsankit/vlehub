@echo off
:: URLs of the files to download
set "url1=https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.exe"
set "url2=https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.dll"
set "url3=https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.xml"

:: Function to download a file
:DownloadFile
set "url=%~1"
for %%I in ("%url%") do set "filename=%%~nxI"
set "output=%~dp0%filename%"
echo Downloading %filename%...
powershell -Command "Start-BitsTransfer -Source '%url%' -Destination '%output%'"
echo Download of %filename% complete!
goto :EOF

:: Download files
call :DownloadFile "%url1%"
call :DownloadFile "%url2%"
call :DownloadFile "%url3%"

:: Run the downloaded exe file
start "" "%~dp0VleHub.exe"

:: Exit the script
exit
