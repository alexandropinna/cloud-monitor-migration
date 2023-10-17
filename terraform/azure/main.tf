# Module: Invocation of the 'resource_group' module.
module "resource_group" {
  # Path to the 'resource_group' module.
  source = "./modules/resource_group"

  # Passing values to the module's variables.
  name_resource_group     = var.name_resource_group
  location_resource_group = var.location_resource_group

  tags                    = var.tags
}

# Module: Invocation of the 'virtual_network' module.
module "virtual_network" {
  source = "./modules/virtual_network"

  name_virtual_network         = var.name_virtual_network
  address_space_virtual_network = var.address_space_virtual_network
  resource_group_location      = module.resource_group.resource_group_location
  resource_group_name          = module.resource_group.resource_group_name

  tags                         = var.tags
}

# Module: Invocation of the 'subnet' module.
module "subnet" {
  source               = "./modules/subnet"

  name_subnet          = var.name_subnet
  address_prefixes_subnet = var.address_prefixes_subnet
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
}

# Module: Invocation of the 'network_security_group' module.
module "network_security_group" {
  source                     = "./modules/network_security_group"

  name_network_security_group = var.name_network_security_group
  resource_group_location    = module.resource_group.resource_group_location
  resource_group_name        = module.resource_group.resource_group_name

  tags                       = var.tags
}

# Module: Invocation of the 'network_interface' module.
module "network_interface" {
  source                     = "./modules/network_interface"

  name_network_interface     = var.name_network_interface
  name_ip_configuration      = var.name_ip_configuration
  subnet_id                  = module.subnet.subnet_id
  private_ip_address_allocation = var.private_ip_address_allocation
  resource_group_location    = module.resource_group.resource_group_location
  resource_group_name        = module.resource_group.resource_group_name

  tags                       = var.tags
}

# Module: Invocation of the 'kubernetes_cluster' module.
module "kubernetes_cluster" {
  source                  = "./modules/kubernetes_cluster"

  name_kubernetes_cluster = var.name_kubernetes_cluster
  dns_prefix              = var.dns_prefix
  vm_size                 = var.vm_size
  resource_group_location = module.resource_group.resource_group_location
  resource_group_name     = module.resource_group.resource_group_name
  
  tags                    = var.tags
}
