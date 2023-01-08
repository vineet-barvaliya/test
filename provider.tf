terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.27.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "725d846f-031b-4069-9f31-50414f130222"
  client_id       = "7fd23cf3-49be-45ed-973c-cdd5ba015ebe"
  client_secret   = "X1e8Q~2FfBGFanvKxQZnoGCQvbgwuE9DbVssxcGG"
  tenant_id       = "5488ef43-b143-480d-ba01-51e81582efb1"
}