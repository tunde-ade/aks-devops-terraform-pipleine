terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.53.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }

  }

  # Terraform  backend state storage
  backend "azurerm" {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "tfstorageastate"
    container_name       = "tfstatefiles"
    key                  = "dev.terraform.tfstate"

  }

}

provider "azurerm" {
  features {

  }
}

# A Random Pet Resource
resource "random_pet" "aksrandom" {

}