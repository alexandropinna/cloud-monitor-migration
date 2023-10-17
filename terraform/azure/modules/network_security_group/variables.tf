# Variable: Name of the Azure Network Security Group.
variable "name_network_security_group" {
  description = "The name of the network security group."
  type        = string
}

# Variable: Location (region) of the Azure Resource Group. This is used to inherit the location for the network security group.
variable "resource_group_location" {
  description = "The location of the associated resource group."
  type        = string
}

# Variable: Name of the Azure Resource Group. This is used to inherit the name for the network security group.
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
