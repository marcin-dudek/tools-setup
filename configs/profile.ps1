Set-Location 'D:\source'

Import-Module posh-git
$color = 'Green'

$GitPromptSettings.DefaultPromptPath.ForegroundColor = $color
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$($Env:Username)'
$GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = $color

Write-Host @"
                        ''~``
                        ( o o )
+------------------.oooO--(_)--Oooo.------------------+
|                                                     |
|                    .oooO                            |
|                    (   )   Oooo.                    |
+---------------------\ (----(   )--------------------+
                    \_)    ) /
                            (_/
                                                                                            
"@ -ForegroundColor Yellow