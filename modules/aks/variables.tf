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

variable "resource_group_name" {
  description = "The name of Resource Group"  
  default = "Hug-RG"
}

variable "location" {
  description = "The name of resource location"  
  default = "Australia East"
}

/*variable "private_cluster_enabled" {
  description = "True if you want to enable private cluster"  
  default = "true"
}*/