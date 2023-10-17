# Output: ID of the created Azure Virtual Network.
output "virtual_network_id" {
  value       = azurerm_virtual_network.k8s_cluster.id
  description = "The ID of the virtual network."
}

# Output: Name of the created Azure Virtual Network.
output "virtual_network_name" {
  value       = azurerm_virtual_network.k8s_cluster.name
  description = "The name of the virtual network."
}
