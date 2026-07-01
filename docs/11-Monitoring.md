# 11 - Monitoring

## Objective

Add visibility through Azure Monitor, Log Analytics, and Kubernetes metrics.

## Components

- Log Analytics Workspace
- Azure Monitor Container Insights
- Metrics Server
- Alerts
- Optional Managed Grafana

## Verification

```powershell
az monitor log-analytics workspace list -o table
kubectl top nodes
kubectl top pods -A
```

## Screenshot Checklist

- Log Analytics workspace
- AKS insights
- Node metrics
- Pod metrics
- Alert rule

