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

## Work with Modules- Finding and using local modules
get-help *module*
Get-Module 
Get-Module -ListAvailable # Get the list of what it is available
Import-Module -name ActiveDirectory #V2 of Powershell
Get-Command -Module ActiveDirectory
Get-Help Get-ADComputer
Get-ADComputer
get-help get-ad*
get-adcomputer -filter *

## Installing modules and packages from a repository
Find-Module  # nuget allows us to get module
install-Module PSReadline # install from repository
Import-Module PSreadline
Set-ExecutionPolicy remotesigned
Get-service -name 'bits'
Set-PSReadlineOption -EditMode Emacs
get-process -name
get-process -name explorer # repository is easy to distribute module
find-package
get-help *package*

## Understanding Pipeline
Get-service -name 'bits'
Stop-Service -name bits
Start-Service -name 'bits'
get-service -name bits | stop-service # string together with multiple pipeline
get-service | Stop-Service -WhatIf # stop service in order
get-service | Stop-Service -Confirm # do you want? same as what if
# cmd | cmd | cmd| cmd| # the goal of the syntax is one liner management but confusing

## working with files and printers
get-help *file*