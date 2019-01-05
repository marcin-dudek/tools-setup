# ------------------ Setup powershell profile ------------------
$docs = [Environment]::GetFolderPath("MyDocuments")
$pwshDir = ($docs + "\PowerShell")
if (! (Test-Path -Path $pwshDir)) {
    New-Item $pwshDir -ItemType Directory -Force
}

Copy-Item .\configs\profile.ps1 -Destination $pwshDir -Force

# ------------------ Setup alacrity settings ------------------
$alacrittyDir = ($env:AppData + "\Alacritty")
if (! (Test-Path -Path $alacrittyDir)) {
    New-Item $alacrittyDir -ItemType Directory -Force
}

Copy-Item .\configs\alacritty.yml -Destination $alacrittyDir -Force
