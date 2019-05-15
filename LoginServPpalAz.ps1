$secpasswd = ConvertTo-SecureString "ServPpalSecretKey" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ServPpalAppID", $secpasswd)

Login-AzAccount -Credential $creds -ServicePrincipal -TenantId "TenantId"

