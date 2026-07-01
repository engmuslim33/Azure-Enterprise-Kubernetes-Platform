param(
    [string]$Location = "westeurope",
    [string]$ResourceGroup = "RG-Security",
    [Parameter(Mandatory = $true)]
    [string]$VaultName
)

$ErrorActionPreference = "Stop"

az keyvault create `
    --resource-group $ResourceGroup `
    --location $Location `
    --name $VaultName `
    --sku standard `
    --enable-rbac-authorization true

az keyvault show `
    --resource-group $ResourceGroup `
    --name $VaultName `
    --query "{name:name,location:location,rbac:properties.enableRbacAuthorization}" `
    -o table

