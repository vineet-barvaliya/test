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

variable "location" {
  description = "The name of resource location"  
  default = "Australia East"
}

variable "private_dns_zone_name" {
  description = "The name of Private DNS Zone"
  default = "privatelink.azurecr.io"
}

variable "virtual_link_name" {
  description = "The name of Virtual Link"
  default = "pevirtualink"
}