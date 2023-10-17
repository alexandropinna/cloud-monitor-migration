# Output: ID of the created Azure Network Interface.
output "network_interface_id" {
  value       = azurerm_network_interface.k8s_cluster.id
  description = "The ID of the network interface."
}

# Output: Name of the created Azure Network Interface.
output "network_interface_name" {
  value       = azurerm_network_interface.k8s_cluster.name
  description = "The name of the network interface."
}
