<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Remoting-Emilien-Dylan-Sanjaey-Noah.ps1
    Author:	Emilien, Dylan, Noah, Sanjaey
    Date:	04.05.202
 	*****************************************************************************
    Modifications
 	Date  : -
 	Author: -
 	Reason: -
 	*****************************************************************************
.SYNOPSIS
    Copy in remoting the tree and create a dile in C:\PC\%username%
 	
.DESCRIPTION
    Copy the tree of the machin in a text file.
    Create a folder in D:\PC\%username%
    Create a log file with the 

.OUTPUTS
	- Copy the tree of a folder in a remoting machine
    - Create a folder in C:\PC\%username%
    - Create a log an error file
	
.EXAMPLE
    PS>Remoting-Emilien-Dylan-Sanjaey-Noah.ps1
#>

param([string]$hostRemoting)
if(!$hostRemoting){
    Get-Help $MyInvocation.Mycommand.Path
}else{
    $compName = $hostRemoting

    $cred = Get-Credential

    $sess = New-PSSession -ComputerName $compName -Credential $cred -ErrorAction Ignore
    if(!$?){
        Write-Warning "Erreur lors de la connexion"
    }else{

        Copy-Item T:\Projet\TreeToCopy\ -Destination T:\Projet\NewTree -Recurse -Erroraction Ignore –ToSession $sess

        Invoke-Command -Session $sess -FilePath S:\Projet\Copy-Tree-Emilien-Dylan-Sanjaey-Noah.ps1

        Remove-PSSession $sess
    }
}
