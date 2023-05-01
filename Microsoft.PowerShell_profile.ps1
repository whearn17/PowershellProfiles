function neofetch {
    Write-Host @"
                                        
    ____                               __         ____
   / __ \____ _      _____  __________/ /_  ___  / / /
  / /_/ / __ \ | /| / / _ \/ ___/ ___/ __ \/ _ \/ / / 
 / ____/ /_/ / |/ |/ /  __/ /  (__  ) / / /  __/ / /  
/_/    \____/|__/|__/\___/_/  /____/_/ /_/\___/_/_/   
                                                             


.------..------..------..------..------..------.
|H.--. ||E.--. ||A.--. ||R.--. ||N.--. ||W.--. |
| :/\: || (\/) || (\/) || :(): || :(): || :/\: |
| (__) || :\/: || :\/: || ()() || ()() || :\/: |
| '--'H|| '--'E|| '--'A|| '--'R|| '--'N|| '--'W|
``------'``------'``------'``------'``------'``------'


"@ -ForegroundColor Cyan
}

function prompt {
    $path = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    $host.ui.RawUI.WindowTitle = "PowerShell: $path"
    Write-Host "PS " -NoNewline -ForegroundColor Green
    Write-Host $(Get-Date) -NoNewline -ForegroundColor Cyan
    Write-Host " $("'$env:USERNAME'")" -NoNewline -ForegroundColor Magenta
    Write-Host " $("'$env:COMPUTERNAME'")" -NoNewline -ForegroundColor Yellow
    Write-Host " $("'$path'")" -NoNewline -ForegroundColor White
    return "$ "
}



neofetch