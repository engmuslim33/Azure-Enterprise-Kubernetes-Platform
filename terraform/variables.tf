variable "location" {
  type        = string
  description = "Azure region for lab resources."
  default     = "westeurope"
}

variable "tags" {
  type        = map(string)
  description = "Common resource tags."
  default = {
    Project     = "Azure-Enterprise-Kubernetes-Platform"
    Environment = "Lab"
    CostControl = "FreeSubscription"
  }
}

