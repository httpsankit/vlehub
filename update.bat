@echo off
cd /d "%~dp0"

:: Create required folders
mkdir "VleHub.exe.WebView2\EBWebView\LocalData" 2>nul

:: Create a temporary PowerShell script
echo $urls = @(> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.exe",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/BouncyCastle.Cryptography.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/BouncyCastle.Cryptography.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/chromedriver.exe",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/HtmlAgilityPack.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/HtmlAgilityPack.pdb",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/HtmlAgilityPack.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/itextsharp.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/itextsharp.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Bcl.AsyncInterfaces.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Bcl.AsyncInterfaces.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Bcl.HashCode.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Bcl.HashCode.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.DependencyInjection.Abstractions.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.DependencyInjection.Abstractions.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.DependencyInjection.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.DependencyInjection.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Logging.Abstractions.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Logging.Abstractions.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Logging.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Logging.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Options.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Options.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Primitives.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Extensions.Primitives.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.Core.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.Core.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.WinForms.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.WinForms.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.Wpf.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Microsoft.Web.WebView2.Wpf.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Newtonsoft.Json.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Npgsql.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Npgsql.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Patagames.Ocr.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/Patagames.Ocr.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/QRCoder.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/SeleniumExtras.WaitHelpers.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Buffers.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Buffers.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Collections.Immutable.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Collections.Immutable.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Diagnostics.DiagnosticSource.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Diagnostics.DiagnosticSource.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Drawing.Common.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Drawing.Common.pdb",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Drawing.Common.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Memory.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Memory.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Numerics.Vectors.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Numerics.Vectors.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Runtime.CompilerServices.Unsafe.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Runtime.CompilerServices.Unsafe.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Text.Encodings.Web.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Text.Encodings.Web.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Text.Json.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Text.Json.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Threading.Channels.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Threading.Channels.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Threading.Tasks.Extensions.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.Threading.Tasks.Extensions.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.ValueTuple.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/System.ValueTuple.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/temp_photo.png",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.exe",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.exe.config",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/VleHub.pdb",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/WebDriver.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/WebDriver.Support.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/WebDriver.Support.xml",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/WebDriver.xml">> download.ps1
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

:: Add LocalData folder downloads
echo $localDataUrls = @(>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/QRCoder.dll",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/bg1.jpg",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/bg2.jpg",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/circle.png",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/emblem.png",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/headers.png",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/satya.png",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/uniBack.jpg",>> download.ps1
echo     "https://github.com/httpsankit/vlehub/raw/refs/heads/main/uniFront.jpg">> download.ps1
echo )>> download.ps1
echo foreach ($url in $localDataUrls) {>> download.ps1
echo     $filename = Split-Path $url -Leaf>> download.ps1
echo     $localDataPath = "VleHub.exe.WebView2\EBWebView\LocalData\$filename">> download.ps1
echo     Write-Host "Downloading $filename to LocalData folder...">> download.ps1
echo     try {>> download.ps1
echo         Invoke-WebRequest -Uri $url -OutFile $localDataPath>> download.ps1
echo         Write-Host "Downloaded successfully: $filename to LocalData folder">> download.ps1
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