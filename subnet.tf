resource "azurerm_subnet" "subnet60" {
  name                 = "subnet60"
  resource_group_name  = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name = azurerm_virtual_network.az104net01.name
  address_prefixes     = ["10.60.0.0/24"]
}

resource "azurerm_subnet" "subnet601" {
  name                 = "subnet601"
  resource_group_name  = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name = azurerm_virtual_network.az104net01.name
  address_prefixes     = ["10.60.1.0/24"]
}

resource "azurerm_subnet" "subnet62" {
  name                 = "subnet62"
  resource_group_name  = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name = azurerm_virtual_network.az104net2.name
  address_prefixes     = ["10.62.0.0/24"]
}

resource "azurerm_subnet" "subnet63" {
  name                 = "subnet63"
  resource_group_name  = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name = azurerm_virtual_network.az104net3.name
  address_prefixes     = ["10.63.0.0/24"]
}

resource "azurerm_subnet" "subnetappgw" {
  name                 = "subnet-appgw"
  resource_group_name  = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name = azurerm_virtual_network.az104net01.name
  address_prefixes     = ["10.60.3.224/27"]
}