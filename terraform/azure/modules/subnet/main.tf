# Resource: Azure Subnet for the Kubernetes cluster within the specified Virtual Network.
resource "azurerm_subnet" "k8s_cluster" {
  # Name of the subnet, passed as a variable.
  name = var.name_subnet

  # Name of the resource group in which the subnet will be created. This is inherited from the resource group.
  resource_group_name = var.resource_group_name

  # Name of the virtual network in which the subnet will be created. This is inherited from the virtual network.
  virtual_network_name = var.virtual_network_name

  # Address prefixes for the subnet, passed as a variable.
  address_prefixes = var.address_prefixes_subnet
}
