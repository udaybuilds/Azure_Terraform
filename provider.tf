terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  #Uncomment these with your values 
  #client_id       = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  #client_secret   = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  #tenant_id       = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  #subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}