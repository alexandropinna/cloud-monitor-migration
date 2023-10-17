# Resource: Azure Kubernetes Service (AKS) Cluster.
resource "azurerm_kubernetes_cluster" "k8s_cluster" {
  # Name of the AKS cluster, passed as a variable.
  name                = var.name_kubernetes_cluster
  
  # Location (region) where the AKS cluster will be created. This location is inherited from the resource group.
  location            = var.resource_group_location
  
  # Name of the resource group in which the AKS cluster will be created. This is inherited from the resource group.
  resource_group_name = var.resource_group_name
  
  # DNS prefix for the AKS cluster, passed as a variable.
  dns_prefix          = var.dns_prefix

  # Configuration for the default node pool of the AKS cluster.
  default_node_pool {
    # Name for the default node pool.
    name       = "nodepool"
    
    # Number of nodes in the default node pool.
    node_count = 1
    
    # VM size for the nodes in the default node pool, passed as a variable.
    vm_size    = var.vm_size
  }

  # Identity configuration for the AKS cluster.
  identity {
    # Type of identity used for the AKS cluster. In this case, "SystemAssigned" indicates a managed identity.
    type = "SystemAssigned"
  }

  # Tags that will be associated with the AKS cluster.
  tags = var.tags
}
