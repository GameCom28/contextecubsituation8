#========================================================================
#NAME: 
#AUTHOR: GameCom28
#DATE: 28/02/2023
#
#VERSION 1.0
#COMMENTS:
#
#Requires -Version 2.0
#========================================================================
#Vars
$path = $env:HOMEDRIVE+$env:HOMEPATH+"\Documents"

Write-Host "choisir L'état du service"
$input = Read-Host "[S/R]"
switch($input){
    "S"{$input_status = "Stopped"}
    "R"{$input_status = "Running"}
}

Get-Service | Where-Object {$_.status -like $input_status} | select Name,DisplayName,Status | Export-Csv -Path $path"\services.csv" -NoTypeInformation

Write-Host "Fichier Exporté dans"$path

