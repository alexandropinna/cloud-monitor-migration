# Variable: Name of the Azure Kubernetes Service (AKS) Cluster.
variable "name_kubernetes_cluster" {
  description = "The name of the Kubernetes cluster."
  type        = string
}

# Variable: DNS prefix for the Azure Kubernetes Service (AKS) Cluster.
variable "dns_prefix" {
  description = "The DNS prefix for the Kubernetes cluster."
  type        = string
}

# Variable: VM size for the nodes in the Azure Kubernetes Service (AKS) Cluster.
variable "vm_size" {
  description = "The VM size for the nodes in the Kubernetes cluster."
  type        = string
}

# Variable: Location (region) of the Azure Resource Group. This is used to inherit the location for the AKS cluster.
variable "resource_group_location" {
  description = "The location of the associated resource group."
  type        = string
}

# Variable: Name of the Azure Resource Group. This is used to inherit the name for the AKS cluster.
variable "resource_group_name" {
  description = "The name of the associated resource group."
  type        = string
}

# Variable: Tags to be associated with Azure resources.
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
