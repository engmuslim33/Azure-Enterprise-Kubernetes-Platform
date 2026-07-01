# 02 - Networking

## Objective

Create the virtual network foundation used by identity, compute, databases, private endpoints, and AKS.

## Design

```text
VNet: 10.10.0.0/16

Management:          10.10.1.0/24
Servers:             10.10.2.0/24
AKS:                 10.10.3.0/24
Database:            10.10.4.0/24
PrivateEndpoint:     10.10.5.0/24
AzureBastionSubnet:  10.10.255.0/26
```

## Implementation

```powershell
.\scripts\02-create-network.ps1 -Location "westeurope"
```

## Verification

```powershell
az network vnet show `
  --resource-group RG-Network `
  --name vnet-core-lab `
  --query "subnets[].{name:name,addressPrefix:addressPrefix}" `
  -o table
```

## Best Practices

- Use separate subnets for AKS, servers, and private endpoints.
- Keep `AzureBastionSubnet` named exactly as required by Azure.
- Apply NSGs per subnet instead of relying on defaults.
- Avoid public IPs for servers where Bastion or VPN can be used.

## Screenshot Checklist

- VNet overview
- Subnet list
- NSG inbound rules
- Network topology view

