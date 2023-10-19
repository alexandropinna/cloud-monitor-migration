# tags
variable "tags" {
  type    = map(string)
  default = {}
}

# azurerm_resource_group
variable "name_resource_group" {
  type = string
}
variable "location_resource_group" {
  type = string
}

# azurerm_virtual_network
variable "name_virtual_network" {
  type = string
}
variable "address_space_virtual_network" {
  type = list(string)
}

# azurerm_subnet
variable "name_subnet" {
  type = string
}
variable "address_prefixes_subnet" {
  type = list(string)
}

# azurerm_network_security_group
variable "name_network_security_group" {
  type = string
}

# azurerm_network_interface
variable "name_network_interface" {
  type = string
}
variable "name_ip_configuration" {
  type = string
}
variable "private_ip_address_allocation" {
  type = string
}

# azurerm_public_ip
variable "name_public_ip" {
  type = string
}

# azurerm_kubernetes_cluster
variable "name_kubernetes_cluster" {
  type = string
}
variable "dns_prefix" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "api_server_authorized_ip_ranges" {
  description = "List of CIDR blocks which can access the Kubernetes API server"
  type        = list(string)
}