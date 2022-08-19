locals {
  acr_name = "${var.vnet_name}${var.projectName}acr"
}

resource "azurerm_container_registry" "aks_acr" {
  name                = local.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
}
# Assifning the permissions to aks cluster to pull the image
/* resource "azurerm_role_assignment" "aks_management_id" {
  principal_id                     = azurerm_kubernetes_cluster.example.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.example.id
  skip_service_principal_aad_check = true
}
 */
