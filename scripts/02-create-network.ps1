param(
    [string]$Location = "westeurope",
    [string]$ResourceGroup = "RG-Network",
    [string]$VnetName = "vnet-core-lab"
)

$ErrorActionPreference = "Stop"

az network vnet create `
    --resource-group $ResourceGroup `
    --location $Location `
    --name $VnetName `
    --address-prefixes "10.10.0.0/16" `
    --subnet-name "snet-management-lab" `
    --subnet-prefixes "10.10.1.0/24"

$subnets = @(
    @{ Name = "snet-servers-lab"; Prefix = "10.10.2.0/24" },
    @{ Name = "snet-aks-lab"; Prefix = "10.10.3.0/24" },
    @{ Name = "snet-database-lab"; Prefix = "10.10.4.0/24" },
    @{ Name = "snet-private-endpoint-lab"; Prefix = "10.10.5.0/24" },
    @{ Name = "AzureBastionSubnet"; Prefix = "10.10.255.0/26" }
)

foreach ($subnet in $subnets) {
    az network vnet subnet create `
        --resource-group $ResourceGroup `
        --vnet-name $VnetName `
        --name $subnet.Name `
        --address-prefixes $subnet.Prefix
}

$nsgs = @(
    "nsg-management-lab",
    "nsg-servers-lab",
    "nsg-aks-lab",
    "nsg-database-lab"
)

foreach ($nsg in $nsgs) {
    az network nsg create `
        --resource-group $ResourceGroup `
        --location $Location `
        --name $nsg
}

az network vnet subnet list `
    --resource-group $ResourceGroup `
    --vnet-name $VnetName `
    --query "[].{name:name,prefix:addressPrefix}" `
    -o table

