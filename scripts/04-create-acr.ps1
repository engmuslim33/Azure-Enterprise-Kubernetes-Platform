param(
    [string]$Location = "westeurope",
    [string]$ResourceGroup = "RG-Containers",
    [Parameter(Mandatory = $true)]
    [string]$RegistryName
)

$ErrorActionPreference = "Stop"

az acr create `
    --resource-group $ResourceGroup `
    --location $Location `
    --name $RegistryName `
    --sku Basic `
    --admin-enabled false

az acr show `
    --resource-group $ResourceGroup `
    --name $RegistryName `
    --query "{name:name,loginServer:loginServer,sku:sku.name}" `
    -o table

