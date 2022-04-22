#########################
##    VNET PEERING 1-2 ##  
#########################

resource "azurerm_virtual_network_peering" "peer1to2" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name      = azurerm_virtual_network.az104net01.name
  remote_virtual_network_id = azurerm_virtual_network.az104net2.id
}

resource "azurerm_virtual_network_peering" "peer2to1" {
  name                      = "peer1to0"
  resource_group_name       = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name      = azurerm_virtual_network.az104net2.name
  remote_virtual_network_id = azurerm_virtual_network.az104net01.id
}

#########################
##    VNET PEERING 1-3 ##  
#########################

resource "azurerm_virtual_network_peering" "peer1to3" {
  name                      = "peer1to3"
  resource_group_name       = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name      = azurerm_virtual_network.az104net01.name
  remote_virtual_network_id = azurerm_virtual_network.az104net3.id
}

resource "azurerm_virtual_network_peering" "peer3to1" {
  name                      = "peer3to1"
  resource_group_name       = azurerm_resource_group.az104-06-rg1.name
  virtual_network_name      = azurerm_virtual_network.az104net3.name
  remote_virtual_network_id = azurerm_virtual_network.az104net01.id
}