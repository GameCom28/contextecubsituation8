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

Get-Service | select Name,DisplayName,Status | Export-Csv -Path $path"\services.csv" -NoTypeInformation

Write-Host "Fichier Exporté dans"$path

