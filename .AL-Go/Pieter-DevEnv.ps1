$containerName = "pte-rest"
$auth = "UserPassword"
$username = "admin"
$securepassword = (ConvertTo-SecureString "admin" -AsPlainText -Force)
$credential = (New-Object System.Management.Automation.PSCredential -ArgumentList ($username, $securepassword))

.$PSScriptRoot\localDevEnv.ps1 -containerName $containerName -auth $auth -credential $credential -accept_insiderEula

Import-TestToolkitToNavContainer -containerName $containerName -includeTestLibrariesOnly
Add-FontsToBcContainer -containerName $containerName