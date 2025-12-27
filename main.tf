resource "azurerm_resource_group" "rg" {
  name     = "myrg-fortest"
  location = "eastasia"
  tags = {
    environment = "test"
  }
}
data "azurerm_virtual_network" "my-vnet-1" {
  name                = "my-vnet-1"
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet-2" {
  name                 = var.subnet-name
  resource_group_name  = data.azurerm_virtual_network.my-vnet-1.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.my-vnet-1.name
  address_prefixes     = ["10.0.2.0/24"]
}
