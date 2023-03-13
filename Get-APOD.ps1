Write-Host "Downloading NASA Astronomy Photo of the Day"
$ProgressPreference = 'silentlyContinue'
if (!(Test-Path "$env:USERPROFILE\Pictures\apod")) {mkdir "$env:USERPROFILE\Pictures\apod"}
$PICTURES_DIR = "$env:USERPROFILE\Pictures\apod"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri https://apod.nasa.gov/apod/ -UserAgent "Mozilla/5.0" -OutFile "C:\temp\apod.html"
$returnImg = Select-String -Pattern jpg -Path "C:\temp\apod.html" | Select-Object -First 1
$imgString = $returnImg.ToString(-split "`n")
$resultImg = $imgString.Substring(31) -replace "..$"
$imgURL = "https://apod.nasa.gov/apod/" + $resultImg
Invoke-WebRequest -Uri $imgURL -OutFile "$PICTURES_DIR\apod.jpg"

$ProgressPreference = 'Continue'

Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name wallpaper -Value "$PICTURES_DIR\apod.jpg"
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name TileWallpaper -Value "0"
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name WallpaperStyle -Value "10"
Write-Host "10 second delay"
$seconds=10
ForEach ($count in (1..$seconds))
    {"$($seconds - $count)..."
        Start-Sleep -Seconds 1
    }
Write-Host "Updating Wallpaper"
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters