# Variable: Name of the Azure Resource Group.
variable "name_resource_group" {
  description = "The name of the resource group."
  type        = string
}

# Variable: Location (region) of the Azure Resource Group.
variable "location_resource_group" {
  description = "The location of the resource group."
  type        = string
}

# Variable: Tags to be associated with Azure resources.
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}