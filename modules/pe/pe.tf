# Data Source for Vnet
data "azurerm_virtual_network" "aksvnet" {
  name                = var.node_vnet_name
  resource_group_name = var.node_rg_name
}
# Data Source for Subnet
data "azurerm_subnet" "akssubnet" {
  name                 = var.node_subnet_name
  virtual_network_name = var.node_vnet_name
  resource_group_name  = var.node_rg_name
}
#Data Source for ACR
data "azurerm_container_registry" "acr" {
  name                = "HugACRTest"
  resource_group_name = "Hug-RG"
}
#Private Endpoint for ACR
resource "azurerm_private_endpoint" "acr" {
  name                = var.pename
  location            = var.location
  resource_group_name = var.node_rg_name
  subnet_id           = data.azurerm_subnet.akssubnet.id

  private_service_connection {
    name                           = "demo-acr"
    private_connection_resource_id = data.azurerm_container_registry.acr.id
    is_manual_connection           = false
    subresource_names = [ "registry" ]
  }
  
  private_dns_zone_group {
    name                 = azurerm_private_dns_zone.privatedns.name
    private_dns_zone_ids = [azurerm_private_dns_zone.privatedns.id]
  }
}

#Private DNS Zone
resource "azurerm_private_dns_zone" "privatedns" {
  name                = var.private_dns_zone_name
  resource_group_name = var.node_rg_name
}

#Private DNS Virtual Link
resource "azurerm_private_dns_zone_virtual_network_link" "privatelink" {
  name                  = var.virtual_link_name
  resource_group_name   = var.node_rg_name
  private_dns_zone_name = azurerm_private_dns_zone.privatedns.name
  virtual_network_id    = data.azurerm_virtual_network.aksvnet.id
}

