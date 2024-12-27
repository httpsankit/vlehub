@echo off
cd /d "%~dp0"

:: Create a temporary PowerShell script
echo $urls = @(> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.exe",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/QRCoder.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/SeleniumExtras.WaitHelpers.dll">> download.ps1
echo )>> download.ps1
echo foreach ($url in $urls) {>> download.ps1
echo     $filename = Split-Path $url -Leaf>> download.ps1
echo     Write-Host "Downloading $filename...">> download.ps1
echo     try {>> download.ps1
echo         Invoke-WebRequest -Uri $url -OutFile $filename>> download.ps1
echo         Write-Host "Downloaded successfully: $filename">> download.ps1
echo     } catch {>> download.ps1
echo         Write-Host "Failed to download: $filename">> download.ps1
echo         Write-Host $_.Exception.Message>> download.ps1
echo     }>> download.ps1
echo }>> download.ps1

:: Run the PowerShell script
powershell -ExecutionPolicy Bypass -File download.ps1

:: Clean up
del download.ps1

:: Check if VleHub.exe exists and run it
if exist "VleHub.exe" (
    start "" "VleHub.exe"
    exit
) else (
    echo VleHub.exe was not downloaded successfully.
    pause
)
