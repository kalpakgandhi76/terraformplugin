variable "CLIENT_ID" {
  description = "Azure Client ID"
  type        = string
}

variable "SECRET" {
  description = "Azure Client Secret"
  type        = string
  sensitive   = true
}

variable "TENANT_ID" {
  description = "Azure Tenant ID"
  type        = string
}

variable "SUBSCRIPTION_ID" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "my-resource-group"
}

variable "storage_account_name" {
  description = "The name of the Azure storage account"
  default     = "mystorageaccount1234"
}