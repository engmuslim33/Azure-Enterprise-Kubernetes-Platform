param(
    [string]$Location = "westeurope"
)

$ErrorActionPreference = "Stop"

$tags = @{
    Project = "Azure-Enterprise-Kubernetes-Platform"
    Environment = "Lab"
    Owner = "Ahmed"
    CostControl = "FreeSubscription"
}

$resourceGroups = @(
    "RG-Network",
    "RG-Identity",
    "RG-Compute",
    "RG-Security",
    "RG-Containers",
    "RG-AKS",
    "RG-Monitoring",
    "RG-DevOps"
)

foreach ($rg in $resourceGroups) {
    az group create `
        --name $rg `
        --location $Location `
        --tags $tags
}

az group list --query "[].{name:name,location:location}" -o table

