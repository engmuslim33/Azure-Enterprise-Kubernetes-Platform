# Images

This directory contains visual assets used by the repository documentation.

## Current Assets

| File | Purpose |
|---|---|
| `architecture-hero.svg` | README hero image for the Azure Enterprise Kubernetes Platform |

## Lab Screenshots

| Screenshot | Related module |
|---|---|
| `screenshots/001-active-directory-upn-suffix.svg` | Active Directory UPN suffix configuration |
| `screenshots/002-entra-connect-sign-in.svg` | Microsoft Entra Connect sign-in configuration |
| `screenshots/003-network-security-groups.svg` | Azure Network Security Groups validation |
| `screenshots/004-aks-nginx-validation.svg` | AKS cluster and Nginx service validation |

## Screenshot Naming Convention

Use numbered filenames so the documentation remains easy to follow:

```text
001-resource-groups.png
002-virtual-network.png
003-subnets.png
004-domain-controller.png
005-key-vault.png
006-acr.png
007-aks-cluster.png
008-kubectl-pods.png
009-load-balancer-service.png
```

Avoid committing screenshots that expose subscription IDs, tenant IDs, usernames, public IPs, keys, or production data.
