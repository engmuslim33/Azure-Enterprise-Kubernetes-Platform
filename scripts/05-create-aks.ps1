param(
    [string]$Location = "westeurope",
    [string]$AksResourceGroup = "RG-AKS",
    [string]$NetworkResourceGroup = "RG-Network",
    [string]$VnetName = "vnet-core-lab",
    [string]$SubnetName = "snet-aks-lab",
    [string]$ClusterName = "aks-aekp-lab",
    [Parameter(Mandatory = $true)]
    [string]$AcrName,
    [string]$NodeVmSize = "Standard_B2s",
    [int]$NodeCount = 1
)

$ErrorActionPreference = "Stop"

$subnetId = az network vnet subnet show `
    --resource-group $NetworkResourceGroup `
    --vnet-name $VnetName `
    --name $SubnetName `
    --query id `
    -o tsv

az aks create `
    --resource-group $AksResourceGroup `
    --name $ClusterName `
    --location $Location `
    --node-count $NodeCount `
    --node-vm-size $NodeVmSize `
    --network-plugin azure `
    --vnet-subnet-id $subnetId `
    --attach-acr $AcrName `
    --enable-managed-identity `
    --generate-ssh-keys

az aks get-credentials `
    --resource-group $AksResourceGroup `
    --name $ClusterName `
    --overwrite-existing

kubectl get nodes

