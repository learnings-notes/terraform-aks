provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstatefile-rg"
    storage_account_name = "ghtfstatefilesa"
    container_name       = "rgtfstatecontainer"
    key                  = "terraformtemplateDev.tfstate"
  }
}
