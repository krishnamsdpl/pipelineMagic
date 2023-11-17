provider "azurerm" {
  features = {}
  subscription_id = "your_subscription_id"
  client_id       = "your_client_id"
  client_secret   = "your_client_secret"
  tenant_id       = "your_tenant_id"
  // ... other parameters
}

# Include the variables.tf file
terraform {
  required_version = ">= 0.12.0"
  source = "./variables.tf"
}

# Other configurations go here...