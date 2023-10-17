# Output: ID of the created Azure Network Security Group.
output "network_security_group_id" {
  value       = azurerm_network_security_group.k8s_cluster.id
  description = "The ID of the network security group."
}

# Output: Name of the created Azure Network Security Group.
output "network_security_group_name" {
  value       = azurerm_network_security_group.k8s_cluster.name
  description = "The name of the network security group."
}
