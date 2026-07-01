# 10 - Azure DevOps CI/CD

## Objective

Build a CI/CD pipeline that builds a Docker image, pushes it to ACR, and deploys to AKS.

## Pipeline Flow

```text
Commit
|
Azure Pipelines
|
Docker build
|
Push to ACR
|
kubectl or Helm deploy to AKS
```

## Starter File

See [azure-pipelines.yml](../azure-pipelines.yml).

## Variables

| Variable | Example |
|---|---|
| acrName | acraekplab001 |
| imageName | aekp-nginx |
| aksCluster | aks-aekp-lab |
| aksResourceGroup | RG-AKS |

