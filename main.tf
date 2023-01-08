#Module to deploy ACR
module "acr" {
    source = "./modules/acr"
    resource_group_name = var.resource_group_name
    location = var.location
    acrname = var.acrname
    sku = var.sku 
    public_network_access_enabled = var.public_network_access_enabled
}

#Module to deploy AKS
module "aks"{
    depends_on = [
      module.acr
    ]
    source = "./modules/aks"
    aksname = var.aksname
    resource_group_name = var.resource_group_name
    location = var.location
    dns_prefix = var.dns_prefix
    node_pool_name = var.node_pool_name
    node_count = var.node_count
    vm_size = var.vm_size
    identity = var.identity
    #private_cluster_enabled = var.private_cluster_enabled
}

#Module to deploy AKS
module "pe"{
    depends_on = [
      module.acr, module.aks
    ]
    source = "./modules/pe"
    node_rg_name = var.node_rg_name
    node_vnet_name = var.node_vnet_name
    node_subnet_name = var.node_subnet_name
    pename = var.pename
    location = var.location
    private_dns_zone_name = var.private_dns_zone_name
    virtual_link_name = var.virtual_link_name
}

