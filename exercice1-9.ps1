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

$file = Import-Csv $path"\services.csv" -Delimiter ","

foreach ($ligne in $file)
{
if ($ligne.Name -like "*system*"){
Write-Host -ForegroundColor Green $ligne.Name $ligne.Status
}else{
Write-Host $ligne.Name $ligne.Status
}
}