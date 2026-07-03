 terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "044401d3-520c-4903-b46c-4d4cffe66a56"  
}


module "rg" {
  source = "./modules/resource_group"
  name = var.rg_name
  location =var.rg_location
}