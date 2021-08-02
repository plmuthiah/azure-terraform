terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 1.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.13.5"
}

provider "azurerm" {
  skip_provider_registration = true
  features {
  }
}