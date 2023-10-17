# Variable: Name of the Azure Subnet.
variable "name_subnet" {
  description = "The name of the subnet."
  type        = string
}

# Variable: Address prefixes for the Azure Subnet.
variable "address_prefixes_subnet" {
  description = "The address prefixes of the subnet."
  type        = list(string)
}

# Variable: Name of the Azure Resource Group. This is used to inherit the name for the subnet.
variable "resource_group_name" {
  description = "The name of the associated resource group."
  type        = string
}

# Variable: Name of the Azure Virtual Network. This is used to inherit the name for the subnet.
variable "virtual_network_name" {
  description = "The name of the associated virtual network."
  type        = string
}
