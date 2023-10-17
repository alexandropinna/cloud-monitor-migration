# Output: ID of the created Azure Kubernetes Service (AKS) Cluster.
output "kubernetes_cluster_id" {
  value       = azurerm_kubernetes_cluster.k8s_cluster.id
  description = "The ID of the Kubernetes cluster."
}

# Output: Name of the created Azure Kubernetes Service (AKS) Cluster.
output "kubernetes_cluster_name" {
  value       = azurerm_kubernetes_cluster.k8s_cluster.name
  description = "The name of the Kubernetes cluster."
}
