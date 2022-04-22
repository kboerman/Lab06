resource "azurerm_virtual_network" "az104net01" {
  name                = "az104-06-vnet01"
  address_space       = ["10.60.0.0/22"]
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
}

resource "azurerm_virtual_network" "az104net2" {
  name                = "az104-06-vnet2"
  address_space       = ["10.62.0.0/22"]
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
}

resource "azurerm_virtual_network" "az104net3" {
  name                = "az104-06-vnet3"
  address_space       = ["10.63.0.0/22"]
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
}