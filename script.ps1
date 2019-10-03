$conn = Get-AutomationConnection -Name "AzureRunAsConnection" 
$null = Add-AzAccount `
  -ServicePrincipal `
  -TenantId $conn.TenantId `
  -ApplicationId $conn.ApplicationId `
  -CertificateThumbprint $conn.CertificateThumbprint

# Use the subscription that this Automation account is in
$null = Select-AzSubscription -SubscriptionId $conn.SubscriptionID
