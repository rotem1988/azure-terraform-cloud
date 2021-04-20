terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  backend "remote" {
    organization = "rotem-hochman"
    workspaces {
      name = "azure-terraform-cloud"
    }
  }
}

provider "azurerm" {
  features {}
}