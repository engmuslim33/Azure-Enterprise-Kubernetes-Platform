# 07 - Azure Container Registry

## Objective

Create a private Azure Container Registry and push the demo image.

## Implementation

```powershell
.\scripts\04-create-acr.ps1 -Location "westeurope" -RegistryName "acraekplab001"
```

## Push Image

```powershell
az acr login --name acraekplab001
docker tag aekp-nginx:1.0 acraekplab001.azurecr.io/aekp-nginx:1.0
docker push acraekplab001.azurecr.io/aekp-nginx:1.0
```

## Verification

```powershell
az acr repository list --name acraekplab001 -o table
az acr repository show-tags --name acraekplab001 --repository aekp-nginx -o table
```

