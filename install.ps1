$docs = [Environment]::GetFolderPath("MyDocuments")


Copy-Item .\configs\profile.ps1 -Destination ($docs + "\Powershell") -Force

$alacrittyDir = ($env:AppData + "\alacritty")
if (! (Test-Path -Path $alacrittyDir)) {
    New-Item $alacrittyDir -ItemType Directory -Force
}

Copy-Item .\configs\alacritty.yml -Destination $alacrittyDir -Force

function Write-HostCenter {
    param($Message) 
    
    Write-Host ("{0}{1}" -f (' ' * (([Math]::Max(0, $Host.UI.RawUI.BufferSize.Width / 2) - [Math]::Floor($Message.Length / 2)))), $Message) 

}