# 09 - Kubernetes Workloads

## Objective

Deploy and understand the core Kubernetes objects used in the lab.

## Objects

- Namespace
- Deployment
- Service
- ConfigMap
- Secret
- PersistentVolumeClaim
- Ingress

## Starter Deployment

```powershell
kubectl apply -f .\kubernetes\nginx
kubectl get all -n web
```

## Verification

```powershell
kubectl describe deployment nginx-demo -n web
kubectl logs -l app=nginx-demo -n web
```

## Next Workloads

- PostgreSQL
- Odoo
- Ingress controller
- Key Vault CSI Driver

