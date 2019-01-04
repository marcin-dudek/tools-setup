$docs = [Environment]::GetFolderPath("MyDocuments")


Copy-Item .\configs\profile.ps1 -Destination ($docs + "\Powershell") -Force

$alacrittyDir = ($env:AppData + "\alacritty")
if (! (Test-Path -Path $alacrittyDir)) {
    New-Item $alacrittyDir -ItemType Directory -Force
}

Copy-Item .\configs\alacritty.yml -Destination $alacrittyDir -Force

