# 1. Specify the version of the AzureRM Provider to use
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-platform-dev"
    storage_account_name = "tfrmtstatefile"
    container_name       = "tfcontainer"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}   