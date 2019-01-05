# ------------------ Setup git alias ------------------
git config --global alias.s "status -s"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.cd "checkout develop"

# ------------------ Install posh git -----------------
PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force