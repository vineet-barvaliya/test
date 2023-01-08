resource "azurerm_resource_group" "demo-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acrdemo" {
  name                = var.acrname
  resource_group_name = azurerm_resource_group.demo-rg.name
  location            = azurerm_resource_group.demo-rg.location
  sku                 = var.sku
  public_network_access_enabled = var.public_network_access_enabled
}