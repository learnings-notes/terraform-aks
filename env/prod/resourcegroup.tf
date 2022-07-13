resource "azurerm_resource_group" "rg" {
  name     = "${var.projectName}-${var.env}-rg"
  location = var.location
}
