# Resource: Azure Resource Group for the Kubernetes cluster.
resource "azurerm_resource_group" "k8s_cluster" {
  # Name of the resource group, passed as a variable.
  name     = var.name_resource_group

  # Location (region) where the resource group will be created, passed as a variable.
  location = var.location_resource_group

  # Tags that will be associated with the resource group.
  tags = var.tags
}