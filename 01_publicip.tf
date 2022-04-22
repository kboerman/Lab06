resource "azurerm_public_ip" "az104-06-pip4" {
  name                = "az104-06-pip4"
  resource_group_name = azurerm_resource_group.az104-06-rg4.name
  location            = var.location
  allocation_method   = "Static"
  sku = "Standard"
}
resource "azurerm_public_ip" "az104-06-pip5" {
  name                = "az104-06-pip5"
  resource_group_name = azurerm_resource_group.az104-06-rg5.name
  location            = var.location
  allocation_method   = "Static"
}