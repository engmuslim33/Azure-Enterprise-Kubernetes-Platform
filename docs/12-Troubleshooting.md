# 12 - Troubleshooting

## Azure CLI Login

Problem:

```text
Please run az login
```

Fix:

```powershell
az login
az account show
```

## Region Quota

Problem:

```text
Operation could not be completed as it results in exceeding approved quota
```

Fix:

- Use a smaller VM size.
- Change region.
- Delete unused resources.
- Request quota increase if available.

## AKS Node Issues

Commands:

```powershell
kubectl get nodes
kubectl describe node <node-name>
kubectl get events -A --sort-by=.lastTimestamp
```

## Image Pull Issues

Commands:

```powershell
az aks check-acr --resource-group RG-AKS --name aks-aekp-lab --acr acraekplab001.azurecr.io
kubectl describe pod <pod-name> -n <namespace>
```

Common fixes:

- Attach ACR to AKS.
- Confirm image tag exists.
- Confirm image path is correct.

