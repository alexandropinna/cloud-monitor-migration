# Resource: Azure Virtual Network for the Kubernetes cluster.
resource "azurerm_virtual_network" "k8s_cluster" {
  # Name of the virtual network, passed as a variable.
  name = var.name_virtual_network

  # Address space of the virtual network, passed as a variable.
  address_space = var.address_space_virtual_network

  # Location (region) where the virtual network will be created. This location is inherited from the resource group.
  location = var.resource_group_location

  # Name of the resource group in which the virtual network will be created. This is inherited from the resource group.
  resource_group_name = var.resource_group_name

  # Tags that will be associated with the virtual network.
  tags = var.tags
}
