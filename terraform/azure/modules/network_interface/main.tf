# Resource: Azure Network Interface for the Kubernetes cluster.
resource "azurerm_network_interface" "k8s_cluster" {
  # Name of the network interface, passed as a variable.
  name = var.name_network_interface

  # Location (region) where the network interface will be created. This location is inherited from the resource group.
  location = var.resource_group_location

  # Name of the resource group in which the network interface will be created. This is inherited from the resource group.
  resource_group_name = var.resource_group_name

  # IP configuration details for the network interface.
  ip_configuration {
    # Name of the IP configuration, passed as a variable.
    name = var.name_ip_configuration

    # ID of the subnet in which the IP configuration will be set up. This is inherited from the subnet.
    subnet_id = var.subnet_id

    # IP address allocation type (e.g., dynamic or static), passed as a variable.
    private_ip_address_allocation = var.private_ip_address_allocation
  }

  # Tags that will be associated with the network interface.
  tags = var.tags
}
