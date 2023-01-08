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
  default = "Basic"
}

variable "public_network_access_enabled" {
  description = "To enable public access to ACR"
  default = "false"
}

