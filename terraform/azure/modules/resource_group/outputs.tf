# Output: Name of the created Azure Resource Group.
output "resource_group_name" {
  value       = azurerm_resource_group.k8s_cluster.name
  description = "The name of the resource group."
}

# Output: Location (region) of the created Azure Resource Group.
output "resource_group_location" {
  value       = azurerm_resource_group.k8s_cluster.location
  description = "The location of the resource group."
}