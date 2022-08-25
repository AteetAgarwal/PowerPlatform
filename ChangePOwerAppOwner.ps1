Add-PowerAppsAccount
$EnvironmentName = 'Default-c73a9ec7-32b7-4ada-9758-cf1149af345e'
$AppName = (Get-AdminPowerApp | where {$_.DisplayName -eq 'FirstCanvasAppFromScratch' -and $_.EnvironmentName -eq 'Default-c73a9ec7-32b7-4ada-9758-cf1149af345e'} | Select AppName).AppName
$NewAppOwner = $Global:CurrentSession.userId

Set-AdminPowerAppOwner -AppName $AppName -AppOwner $NewAppOwner -EnvironmentName $EnvironmentName