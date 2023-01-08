# ACR variables declaration
variable "acrname" {
  description = "The name of ACR"  
  default = "HugACRTest"
}

variable "resource_group_name" {
  description = "The name of Resource Group"  
  default = "Hug-RG"
}

variable "location" {
  description = "The name of resource location"  
  default = "Australia East"
}

variable "sku" {
  default = "Premium"
}

variable "public_network_access_enabled" {
  description = "To enable public access to ACR"
  default = "false"
}

#AKS variables declaration
variable "aksname" {
  description = "The name of AKS"  
  default = "hug-aks-test"
}

variable "dns_prefix" {
  default = "hugdns"
}

variable "node_pool_name" {
  description = "The name of Node Pool"
  default = "default"
}

variable "vm_size" {
  description = "The size of VM"
  default = "Standard_D2_v2"
}

variable "node_count" {
  description = "The number of nodes"
  default = "1"
}

variable "identity" {
  description = "Type of identity"
  default = "SystemAssigned"
}

/*variable "private_cluster_enabled" {
  description = "True if you want to enable private cluster"  
  default = "true"
}*/

#Private Endpoint variables declaration
variable "node_rg_name" {
  description = "The name of AKS Node Resource Group"  
  default = "MC_Hug-RG_hug-aks-test_australiaeast"
}

variable "node_vnet_name" {
  description = "The name of AKS Node Virtual Network"  
  default = "aks-vnet-33151525"
}

variable "node_subnet_name" {
  description = "The name of AKS Node Subnet"  
  default = "aks-subnet"
}

variable "pename" {
  description = "The name of Private Endpoint"
  default = "pe-hug-acr"   
}

variable "private_dns_zone_name" {
  description = "The name of Private DNS Zone"
  default = "privatelink.azurecr.io"
}

variable "virtual_link_name" {
  description = "The name of Virtual Link"
  default = "pevirtualink"
}