terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.80"
    }
  }
  backend "azurerm" {
    backend "azurerm" {
    resource_group_name  = "rg-terraform-demo"
    storage_account_name = "storageterraformdemo"
    container_name        = "democontainerstate"
    key                    = "vm-prod.tfstate"
  }
    
  }
}
provider "azurerm" {
  features {
    
  }
  
}