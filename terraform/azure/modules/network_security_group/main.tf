# Resource: Azure Network Security Group for the Kubernetes cluster.
resource "azurerm_network_security_group" "k8s_cluster" {
  # Name of the network security group, passed as a variable.
  name = var.name_network_security_group

  # Location (region) where the network security group will be created. This location is inherited from the resource group.
  location = var.resource_group_location

  # Name of the resource group in which the network security group will be created. This is inherited from the resource group.
  resource_group_name = var.resource_group_name

  # Tags that will be associated with the network security group.
  tags = var.tags
}
