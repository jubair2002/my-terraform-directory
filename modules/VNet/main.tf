resource "azurerm_resource_group" "vnet_rg" {
  name     = var.rg_name
  location = var.rg_location
}

module "virtual_network" {
  source              = "aztfm/virtual-network/azurerm"
  version             = ">=5.0.0"
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.vnet_rg.name
  location            = azurerm_resource_group.vnet_rg.location
  address_space       = var.vnet_addr_space
  dns_servers         = var.vnet_dns_servers
}
