provider "azurerm" {
  features {}
  
  # Authentication using environment variables (Client ID, Client Secret, Tenant ID)
  client_id       = var.CLIENT_ID
  client_secret   = var.SECRET
  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "East US"
}

# Create a storage account
resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "Terraform"
  }
}

# Output the Storage Account name
output "storage_account_name" {
  value = azurerm_storage_account.storageaccount.name
}