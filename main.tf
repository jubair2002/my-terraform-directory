module "vnet" {
  source           = "./modules/VNet"
  rg_name          = var.resource_group_name
  rg_location      = var.rg_location
  vnet_name        = var.azureVnet_name
  vnet_addr_space  = var.vnet_addr_space
  vnet_dns_servers = var.vnet_dns_servers
}