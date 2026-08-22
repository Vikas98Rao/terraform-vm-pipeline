terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.80"
    }
  }
 backend "azurerm" {
    resource_group_name  = "rg-terraform-demo"
    storage_account_name = "storageterraformdemo"
    container_name        = "democontainerstate"
    key                    = "vm-preprod.tfstate"
  }
}
provider "azurerm" {
  features {
    
  }
  
}