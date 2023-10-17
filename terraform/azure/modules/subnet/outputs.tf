# Output: ID of the created Azure Subnet.
output "subnet_id" {
  value       = azurerm_subnet.k8s_cluster.id
  description = "The ID of the subnet."
}

# Output: Name of the created Azure Subnet.
output "subnet_name" {
  value       = azurerm_subnet.k8s_cluster.name
  description = "The name of the subnet."
}
