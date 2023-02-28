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
function InfoProcessus($Power){
Get-Process *$Power* | select ProcessName,Id,Description | Export-Csv -Path $path"\sauvegarde.csv" -NoTypeInformation
Get-Process *$Power* | select ProcessName,Id,Description | Out-File $path"\sauvegarde.txt"
}
$input = Read-Host "Entrez votre processus"
InfoProcessus $input