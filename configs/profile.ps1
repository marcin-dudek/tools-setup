# --------- Import and setup posh git
Import-Module posh-git
$color = '0x00a600'

$GitPromptSettings.DefaultPromptPath.ForegroundColor = $color
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$($Env:Username)'
$GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = $color

# --------- Show logo
$logo = @"
                        ''~``
                        ( o o )
+------------------.oooO--(_)--Oooo.------------------+
|                                                     |
|                    .oooO                            |
|                    (   )   Oooo.                    |
+---------------------\ (----(   )--------------------+
                    \_)    ) /                         
                            (_/                        

"@

function Write-HostCenter {
    param($Message, $color) 

    $lines = $Message.Split([Environment]::NewLine, [StringSplitOptions]::RemoveEmptyEntries)
    $maxLength = 0
    foreach ($x in $lines) {
        if ($x.Length -gt $maxLength) {
            $maxLength = $x.Length
        }
    }

    $leftPad = ([Math]::Max(0, $Host.UI.RawUI.BufferSize.Width / 2) - [Math]::Floor($maxLength / 2))
    $left = ' ' * $leftPad
    foreach ($a in $lines) {
        Write-Host ("{0}{1}" -f $left, $a) -ForegroundColor $color
    }

}

Write-HostCenter $logo Blue