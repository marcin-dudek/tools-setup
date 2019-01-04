$profileFile = [Environment]::GetFolderPath("MyDocuments") + "\Powershell\profile.ps1"
$alacrittyFile = ($env:AppData + "\alacritty\alacritty.yml")

Remove-Item $profileFile
Remove-Item $alacrittyFile