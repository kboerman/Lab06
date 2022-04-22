resource "azurerm_route_table" "az104_06_rt23" {
  name                = "az104_06_rt23"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  route {
    name                   = "az104-06-route-vnet2-to-vnet3"
    address_prefix         = "10.63.0.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.60.0.4"
  }
}

resource "azurerm_subnet_route_table_association" "rt2to3" {
  subnet_id      = azurerm_subnet.subnet62.id
  route_table_id = azurerm_route_table.az104_06_rt23.id
}

resource "azurerm_route_table" "az104-06-rt32" {
  name                = "az104_06_rt32"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  route {
    name                   = "az104-06-route-vnet3-to-vnet2"
    address_prefix         = "10.62.0.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.60.0.4"
  }
}

resource "azurerm_subnet_route_table_association" "rt3to2" {
  subnet_id      = azurerm_subnet.subnet63.id
  route_table_id = azurerm_route_table.az104-06-rt32.id
}
