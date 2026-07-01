# 01 - Azure Environment

## Objective

Prepare the Azure subscription, resource groups, naming convention, tags, and cost controls.

## Prerequisites

- Azure Free Account or Azure for Students
- Azure CLI
- PowerShell 7 or Windows PowerShell
- Microsoft account or Entra ID user with contributor permissions

## Recommended Region

Choose one region and keep the lab consistent.

Good options from Egypt:

- UAE North
- West Europe
- Sweden Central

For Free subscription testing, choose the region where required services are available and cheapest.

## Resource Groups

Create:

```powershell
.\scripts\01-create-resource-groups.ps1 -Location "westeurope"
```

## Tags

Apply tags to every resource:

| Tag | Value |
|---|---|
| Project | Azure-Enterprise-Kubernetes-Platform |
| Environment | Lab |
| Owner | Ahmed |
| CostControl | FreeSubscription |

## Verification

```powershell
az group list --query "[].{name:name, location:location}" -o table
```

## Screenshot Checklist

- Azure subscription overview
- Resource groups list
- Tags on one resource group
- Cost Management page

## Troubleshooting

If resource creation fails because of quota, lower VM size or change region.

If AKS is unavailable in the selected region, keep the same docs but deploy AKS in a nearby supported region.

