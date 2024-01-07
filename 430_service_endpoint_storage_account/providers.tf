terraform {

  required_version = ">=1.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.86.0"
    }
    http = {
      source  = "hashicorp/http"
      version = ">= 3.4.1"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
