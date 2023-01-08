data "azurerm_resource_group" "demo-rg" {
  name     = var.resource_group_name
}

resource "azurerm_kubernetes_cluster" "demo-aks" {
  name                = var.aksname
  location            = data.azurerm_resource_group.demo-rg.location
  resource_group_name = data.azurerm_resource_group.demo-rg.name
  dns_prefix          = var.dns_prefix
  #private_cluster_enabled = var.private_cluster_enabled

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = var.identity
  }

  tags = {
    Environment = "Production"
  }
}
#This is the test

