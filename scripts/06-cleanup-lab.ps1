param(
    [switch]$DeleteAks,
    [switch]$DeleteAllResourceGroups
)

$ErrorActionPreference = "Stop"

if ($DeleteAks) {
    az aks delete --resource-group RG-AKS --name aks-aekp-lab --yes
}

if ($DeleteAllResourceGroups) {
    $groups = @(
        "RG-AKS",
        "RG-Containers",
        "RG-Security",
        "RG-Compute",
        "RG-Identity",
        "RG-Network",
        "RG-Monitoring",
        "RG-DevOps"
    )

    foreach ($group in $groups) {
        az group delete --name $group --yes --no-wait
    }
}

