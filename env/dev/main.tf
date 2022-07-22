provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstatefile-rg"
    storage_account_name = "ghtfstatefilesa"
    container_name       = "rgtfstatecontainer"
    key                  = "aks-Dev.tfstate"
  }
}

module "network" {
  source              = "Azure/network/azurerm"
  vnet_name           = "${var.vnet_name}-${var.projectName}"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = "10.52.0.0/16"
  subnet_prefixes     = ["10.52.0.0/24"]
  subnet_names        = ["subnet1"]
  depends_on          = [azurerm_resource_group.rg]
}
