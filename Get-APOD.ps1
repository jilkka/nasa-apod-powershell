Write-Host "Downloading NASA Astronomy Photo of the Day"
$ProgressPreference = 'silentlyContinue'
if (!(Test-Path "$env:USERPROFILE\Pictures\apod")) {mkdir "$env:USERPROFILE\Pictures\apod"}
$PICTURES_DIR = "$env:USERPROFILE\Pictures\apod"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#Download APOD html page in order to get the image URL and save it to following location as apod.html
Invoke-WebRequest -Uri https://apod.nasa.gov/apod -OutFile "C:\Users\<UserAccount>\APOD\apod.html"

#Read through apod.html html file and return first occurence of line containing "jpg"
$returnImg = Select-String -Pattern jpg -Path "C:\Users\<UserAccount\APOD\apod.html" | Select-Object -First 1

#Split that first occurence^^ with double quote character and print the first occurence 
$imgString = $returnImg.ToString().Split("`"")[1]

#Add APOD website domain and website directory to the image url from previous occurence
$imgURL = "https://apod.nasa.gov/apod/" + "$imgString"
Invoke-WebRequest -Uri $imgURL -OutFile "$PICTURES_DIR\apod.jpg"
$ProgressPreference = 'Continue'

Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name wallpaper -Value "$PICTURES_DIR\apod.jpg"
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name TileWallpaper -Value "0"
#Set the wallpaper style to SPAN as to keep aspect ratio correct, change this value to your liking
#Windows Wallpaper values: https://www.tenforums.com/tutorials/91437-specify-default-desktop-background-windows-10-a.html
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name WallpaperStyle -Value "5"
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
