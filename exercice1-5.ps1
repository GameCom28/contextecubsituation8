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
function InfoProcessus($Power){
Get-Process $Power | select ProcessName,Id,Description | Out-GridView
}

$input = Read-Host "Entrez votre processus"
InfoProcessus $input