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
  client_id       = "9a00a4ef-001d-4cca-8592-0d80c927bedc"
  client_secret   = "CBH8Q~gYcPKgVAFY2X0E9TTbSuxhUOo~LFfltcHl"
  tenant_id       = "4063e75f-79cf-4bc3-af5e-6530dfcbeb2d"
  subscription_id = "39a35ad4-a385-4500-9860-a69ff84b8b70"
}