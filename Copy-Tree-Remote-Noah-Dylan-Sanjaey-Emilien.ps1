<#
.NOTES
    *****************************************************************************
    ETML
    Name:	CanevasV2.ps1
    Author:	...
    Date:	xx.xx.xxxx
 	*****************************************************************************
    Modifications
 	Date  : -
 	Author: -
 	Reason: -
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER Param1
    Description first parameter
 	
.PARAMETER Param2
    Description second parameter
 	
.PARAMETER Param3
    Description third parameter

.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
param([string]$Param1="...", [string]$Param2, [string]$Param3)

#display help if parameter is missing
if(!$Param2 -or !$Param3)
{
    Get-Help $MyInvocation.Mycommand.Path
    
}
else
{
    
    write-host "coucou"
	write-host "bonjour"
	
	if(){
		
	}else{
		
	}	
    
}# endif


