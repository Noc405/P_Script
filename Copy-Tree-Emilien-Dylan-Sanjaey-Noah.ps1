<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Copy-Tree-Emilien-Dylan-Sanjaey-Noah.ps1
    Author:	Emilien, Dylan, Noah, Sanjaey
    Date:	18.05.202
 	*****************************************************************************
    Modifications
 	Date  : -
 	Author: -
 	Reason: -
 	*****************************************************************************
.SYNOPSIS
    Copy the tree and create a file in C:\PC\
 	
.DESCRIPTION
    Copy the tree of the machin in a text file.
    Create a folder in D:\PC\
    Create a log file with the 

.OUTPUTS
	- Copy the tree of a folder in a remoting machine
    - Create a folder in C:\PC\
    - Create a log an error file
	
.EXAMPLE
    PS>Remoting-Emilien-Dylan-Sanjaey-Noah.ps1
#>

$pathReturnedFile = "T:\Projet\logs"
$directoryUserPath = "T:\Projet\PC"
$logs = (Get-Date -Format "yyyy-MM-dd-HH-mm-ss") + "> Script executed`n"
$scriptErrors = (Get-Date -Format "yyyy-MM-dd-HH-mm-ss") + "> No errors"

#check if the logs folder exists, if not create it
if(!(Test-Path $pathReturnedFile)){
    New-Item -Path T:\Projet -Name "logs" -ItemType Directory
}

# check if the folder for the user exists, if not create it
if(!(Test-Path $directoryUserPath)){
    New-Item -Path T:\Projet -Name "PC" -ItemType Directory
}

#Create a folder with the username
$username = (Get-ChildItem Env:\USERNAME).Value #Get the username value

if(!(Test-Path "T:\Projet\PC\$username")){
    New-Item -Path T:\Projet\PC -Name $username -ItemType Directory -ErrorAction Ignore
}
#test if an error appened
if(!$?){
    $logs += (Get-Date -Format "yyyy-MM-dd-HH-mm-ss") + "> Create folder for user : Error"
    $scriptErrors = (Get-Date -Format "yyyy-MM-dd-HH-mm-ss") + "> Error in creation folder for the user"
}else{
    $logs += (Get-Date -Format "yyyy-MM-dd-HH-mm-ss") + "> Create folder for user : Success"
}

#Write in the file
Write-Output $logs > T:\Projet\logs\logs.txt
Write-Output $scriptErrors > T:\Projet\logs\error.txt