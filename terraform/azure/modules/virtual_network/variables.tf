# Variable: Name of the Azure Virtual Network.
variable "name_virtual_network" {
  description = "The name of the virtual network."
  type        = string
}

# Variable: Address space for the Azure Virtual Network.
variable "address_space_virtual_network" {
  description = "The address space of the virtual network."
  type        = list(string)
}

# Variable: Location (region) of the Azure Resource Group. This is used to inherit the location for the virtual network.
variable "resource_group_location" {
  description = "The location of the associated resource group."
  type        = string
}

# Variable: Name of the Azure Resource Group. This is used to inherit the name for the virtual network.
variable "resource_group_name" {
  description = "The name of the associated resource group."
  type        = string
}

# Variable: Tags to be associated with Azure resources.
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
