resource "azurerm_lb" "az104-06-lb4" {
  name                = "az104-06-lb4"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg4.name
  sku = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIP4"
    public_ip_address_id = azurerm_public_ip.az104-06-pip4.id
  }
}
resource "azurerm_lb_backend_address_pool" "az104-06-lb4-be1" {
  loadbalancer_id = azurerm_lb.az104-06-lb4.id
  name            = "az104-06-lb4-be1"
}

resource "azurerm_lb_backend_address_pool_address" "backend" {
  name                    = "az104-06-lb4-be1"
  backend_address_pool_id = azurerm_lb_backend_address_pool.az104-06-lb4-be1.id
  virtual_network_id      = azurerm_virtual_network.az104net01.id  
  ip_address              = "10.60.0.4"
}
resource "azurerm_lb_probe" "lb_probe" {
  loadbalancer_id = azurerm_lb.az104-06-lb4.id
  name            = "az104-06-lb4-hp1"
  protocol        = "Tcp"
  port            = 80
  interval_in_seconds = "5"
  number_of_probes = "2"
}

resource "azurerm_lb_rule" "LBrule" {
  loadbalancer_id                = azurerm_lb.az104-06-lb4.id
  name                           = "az104-06-lb4-lbrule1"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIP4"
  probe_id = azurerm_lb_probe.lb_probe.id
}