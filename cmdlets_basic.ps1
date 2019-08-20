#####Windows native
#notepad
#ipconfig
#ping
#calc
#2+4-1

#set-location C:\
#get-childitem

#####command
#dir
ls
clear

#####alias
get-alias cls
get-alias dir

#### Update discover command list and help
update-help -force
get-help
help #Same as get-help
man  #Unix version of get-help
get-help *process*
get-help Get-Process
get-help *ipaddress
get-help New-NetIPAddress
help *firewall*
get-help get-*service*
get-help about_*

## get help more detail
get-help Get-Process -Detailed
get-help Get-Help -Full

## Get all service
get-service
get-help Get-Service -Detailed
get-help get-service -ShowWindow # Can search easier
get-help Get-Service -online # Access latest version if older version of powershell
##### Syntax in powershell
#Get-Fake -parm Arg -param -param arg, arg
get-service -name bits
get-service -name bits,bfe
get-service -DisplayName "app*"

Get-Alias -Definition get-service
Get-Alias -Name gsv
ps -c dc
Get-Alias ps
Get-Process -ComputerName
## Extend powershell capability with snapin
get-help *snapin*
Get-PSSnapin -Registered
Add-PSSnapin -name *exch*
## Work with Modules
get-help *module*
Get-Module 
Get-Module -ListAvailable # Get the list of what it is available
Import-Module -name ActiveDirectory #V2 of Powershell
Get-Command -Module act
