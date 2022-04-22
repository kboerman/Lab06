resource "azurerm_application_gateway" "network" {
  name                = "az104-06-appgw5"
  resource_group_name = azurerm_resource_group.az104-06-rg5.name
  location            = var.location

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "appGatewayIpConfig"
    subnet_id = azurerm_subnet.subnetappgw.id
  }

  frontend_port {
    name = "port_80"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "appGwPublicFrontendIp"
    public_ip_address_id = azurerm_public_ip.az104-06-pip5.id
  }

  backend_address_pool {
    name = "az104-06-appgw5-be1"
  }

  backend_http_settings {
    name                  = "az104-06-appgw5-http1"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 20
  }

  http_listener {
    name                           = "az104-06-appgw5-rl1l1"
    frontend_ip_configuration_name = "appGwPublicFrontendIp"
    frontend_port_name             = "port_80"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "az104-06-appgw5-rl1"
    rule_type                  = "Basic"
    http_listener_name         = "az104-06-appgw5-rl1l1"
    backend_address_pool_name  = "az104-06-appgw5-be1"
    backend_http_settings_name = "az104-06-appgw5-http1"
  }
}