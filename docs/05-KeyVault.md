# 05 - Azure Key Vault

## Objective

Create Azure Key Vault and store lab secrets securely.

## Implementation

```powershell
.\scripts\03-create-keyvault.ps1 -Location "westeurope" -VaultName "kv-aekp-lab-001"
```

## Example Secret

```powershell
az keyvault secret set `
  --vault-name kv-aekp-lab-001 `
  --name PostgreSQLPassword `
  --value "ReplaceWithStrongLabPassword"
```

## Verification

```powershell
az keyvault secret show `
  --vault-name kv-aekp-lab-001 `
  --name PostgreSQLPassword `
  --query "name" `
  -o tsv
```

## Best Practices

- Never store real secrets in Git.
- Use RBAC where possible.
- Enable purge protection for production, but understand lifecycle impact in labs.
- Use Key Vault CSI Driver later for AKS integration.

