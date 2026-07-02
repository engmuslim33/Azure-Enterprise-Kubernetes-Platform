# Azure Enterprise Kubernetes Platform

End-to-end enterprise infrastructure on Microsoft Azure, from identity and networking to AKS, containers, CI/CD, monitoring, and application deployment.

![Azure Enterprise Kubernetes Platform architecture hero](docs/images/architecture-hero.svg)

[![Azure](https://img.shields.io/badge/Azure-Cloud-0078D4)](https://azure.microsoft.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-AKS-326CE5)](https://kubernetes.io/)
[![Docker](https://img.shields.io/badge/Docker-Containers-2496ED)](https://www.docker.com/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-844FBA)](https://www.terraform.io/)
[![Status](https://img.shields.io/badge/Status-Active-success)](#implementation-roadmap)

This project is designed as a portfolio-grade Azure lab that can be built on a Free or Student subscription with careful cost control. The documentation starts with manual implementation for learning, then introduces automation with scripts and Terraform.

## Table of Contents

- [Project Goals](#project-goals)
- [Architecture Scope](#architecture-scope)
- [Free Subscription Design](#free-subscription-design)
- [Repository Structure](#repository-structure)
- [Implementation Roadmap](#implementation-roadmap)
- [Quick Start](#quick-start)
- [Screenshot Workflow](#screenshot-workflow)

## Project Goals

- Build a realistic Azure enterprise platform from an empty subscription.
- Practice Azure administration, identity, networking, containers, and Kubernetes.
- Deploy workloads through Azure Container Registry and Azure Kubernetes Service.
- Document every decision, command, verification step, and troubleshooting note.
- Produce a GitHub repository suitable for a cloud or DevOps portfolio.

## Architecture Scope

The target platform includes:

- Azure resource organization and naming standards
- Virtual network, subnets, NSGs, and private endpoints
- Windows Server Active Directory lab VM
- Microsoft Entra ID and optional hybrid identity notes
- Azure Key Vault for secrets
- Docker and Azure Container Registry
- Azure Kubernetes Service
- Kubernetes namespaces, deployments, services, ingress, and storage
- PostgreSQL and Odoo workload path
- Azure DevOps CI/CD pipeline
- Azure Monitor, Log Analytics, and cost controls

## Free Subscription Design

The lab is intentionally staged to avoid unnecessary cost:

- Start with one small Windows VM only when identity practice is needed.
- Prefer Basic or free tiers where available.
- Keep AKS node count low and stop/delete expensive resources after each session.
- Use screenshot placeholders and documentation even when a service cannot remain running.
- Track cost after every phase.

See [docs/01-Azure-Environment.md](docs/01-Azure-Environment.md) for budget rules.

## Repository Structure

```text
Azure-Enterprise-Kubernetes-Platform
|
+-- README.md
+-- LICENSE
+-- CHANGELOG.md
+-- CONTRIBUTING.md
+-- SECURITY.md
+-- docs
|   +-- 00-Architecture.md
|   +-- 01-Azure-Environment.md
|   +-- 02-Networking.md
|   +-- 03-Active-Directory.md
|   +-- 04-Hybrid-Identity.md
|   +-- 05-KeyVault.md
|   +-- 06-Docker.md
|   +-- 07-ACR.md
|   +-- 08-AKS.md
|   +-- 09-Kubernetes-Workloads.md
|   +-- 10-Azure-DevOps-CICD.md
|   +-- 11-Monitoring.md
|   +-- 12-Troubleshooting.md
|   +-- images
+-- diagrams
+-- docker
+-- helm
+-- kubernetes
+-- scripts
+-- terraform
```

## Implementation Roadmap

| Phase | Area | Status |
|---|---|---|
| 01 | Azure environment and governance | Ready |
| 02 | Networking foundation | Ready |
| 03 | Active Directory lab VM | Ready |
| 04 | Hybrid identity design | Ready |
| 05 | Key Vault | Ready |
| 06 | Docker | Ready |
| 07 | Azure Container Registry | Ready |
| 08 | AKS | Ready |
| 09 | Kubernetes workloads | Ready |
| 10 | Azure DevOps CI/CD | Draft |
| 11 | Monitoring | Draft |
| 12 | Troubleshooting | Draft |

## Quick Start

Before running commands, sign in and select the correct subscription:

```powershell
az login
az account show
```

Then build the lab in this order:

```powershell
.\scripts\01-create-resource-groups.ps1 -Location "westeurope"
.\scripts\02-create-network.ps1 -Location "westeurope"
.\scripts\03-create-keyvault.ps1 -Location "westeurope" -VaultName "kv-aekp-lab-001"
.\scripts\04-create-acr.ps1 -Location "westeurope" -RegistryName "acraekplab001"
.\scripts\05-create-aks.ps1 -Location "westeurope" -AcrName "acraekplab001"
kubectl apply -f .\kubernetes\nginx
```

For the full explanation, start with [docs/00-Architecture.md](docs/00-Architecture.md).

## Screenshot Workflow

Store screenshots in `docs/images` using this naming pattern:

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

The main architecture hero image is stored at:

```text
docs/images/architecture-hero.svg
```

## Author

Ahmed Mohamed Emam

Senior System Administrator and DevOps Engineer
