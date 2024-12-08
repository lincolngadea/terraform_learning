terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "lincolngadeatfstate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}