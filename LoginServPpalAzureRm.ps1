$secpasswd = ConvertTo-SecureString "ServPpalSecretKey" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ServPpalAppID", $secpasswd)

Login-AzureRmAccount -Credential $creds -ServicePrincipal -TenantId "TenantId"

