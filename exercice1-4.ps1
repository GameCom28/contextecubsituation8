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

$Processus = Read-Host "Entrez votre processus"
Get-Process $Processus | select ProcessName,Id,Description | Out-GridView