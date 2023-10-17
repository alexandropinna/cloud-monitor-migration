# Variable: Name of the Azure Network Interface.
variable "name_network_interface" {
  description = "The name of the network interface."
  type        = string
}

# Variable: Name of the IP configuration for the Azure Network Interface.
variable "name_ip_configuration" {
  description = "The name of the IP configuration."
  type        = string
}

# Variable: Subnet ID where the Azure Network Interface will reside.
variable "subnet_id" {
  description = "The ID of the subnet associated with the network interface."
  type        = string
}

# Variable: IP address allocation type for the Azure Network Interface.
variable "private_ip_address_allocation" {
  description = "The IP address allocation type (dynamic or static) for the network interface."
  type        = string
}

# Variable: Location (region) of the Azure Resource Group. This is used to inherit the location for the network interface.
variable "resource_group_location" {
  description = "The location of the associated resource group."
  type        = string
}

# Variable: Name of the Azure Resource Group. This is used to inherit the name for the network interface.
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
