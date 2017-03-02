######Robbie Toumbs#######
###Modified from NS####
#Input username 
For ($i=0; $i -le 100; $i++) {  #Loop Program
$username = Read-Host "Username" 
Write-Host " "

$DisableUserInfo = get-aduser $username -properties *

Write-Host "OU: " $DisableUserInfo.DistinguishedName
Write-Host "Name: " $DisableUserInfo.CN
Write-Host "Title: " $DisableUserInfo.Title
Write-Host "Last Logon: " $DisableUserInfo.LastLogonDate
Write-Host "Job Code: " $DisableUserInfo.extensionAttribute2
Write-Host "Employee ID: " $DisableUserInfo.EmployeeID
Write-Host "When Created: " $DisableUserInfo.whenCreated
Write-Host "Expiration: " $DisableUserInfo.AccountExpirationDate
Write-Host " "

#Net logon Info
#Share Drive Info
    $ScriptPath = $DisableUserInfo.ScriptPath
    $NetLog = "Path to logon script server"
    Write-Host "***** Shared Drives ***** " 
    $NetLogInfo = Select-String -Path $NetLog -pattern "\\"
        $NetLogInfo = $NetLogInfo -replace ".*NET USE ", ""
        $NetLogInfo = $NetLogInfo -replace ".*shslogin.bat", ""
            $NetLogInfo 



Write-Host " "
Pause #hold the program from looping
Clear-Host
}
Exit
