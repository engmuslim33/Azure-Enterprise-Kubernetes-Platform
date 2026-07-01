# 04 - Hybrid Identity

## Objective

Document how on-premises style Active Directory can synchronize with Microsoft Entra ID.

## Important Note

Microsoft Entra Connect can be heavy for a Free lab. Treat this phase as optional unless you have enough quota and credits.

## Concepts

- Microsoft Entra ID
- AD DS
- Microsoft Entra Connect
- Password Hash Synchronization
- UPN suffix
- Sync scope
- Hybrid users

## Implementation Outline

1. Verify AD DS domain health.
2. Add a routable UPN suffix if needed.
3. Install Microsoft Entra Connect on the domain controller or separate server.
4. Select Password Hash Synchronization.
5. Scope sync to lab OU.
6. Verify synced users in Entra ID.

## Verification

```powershell
Get-ADSyncScheduler
Start-ADSyncSyncCycle -PolicyType Delta
```

## Screenshot Checklist

- Entra Connect wizard
- Sync configuration
- Entra ID users
- Synced user source

