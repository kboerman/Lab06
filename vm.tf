resource "azurerm_network_interface" "az104-06-nic0" {
  name                = "az104-05-nic0"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet60.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "az104-06-vm0" {
  name                = "az104-06-vm0"
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.az104-06-nic0.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

####VM1###
resource "azurerm_network_interface" "az104-06-nic1" {
  name                = "az104-05-nic1"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet601.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "az104-06-vm1" {
  name                = "az104-06-vm1"
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.az104-06-nic1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

####VM2###
resource "azurerm_network_interface" "az104-06-nic2" {
  name                = "az104-05-nic2"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet62.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "az104-06-vm2" {
  name                = "az104-06-vm2"
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.az104-06-nic2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

####VM3###
resource "azurerm_network_interface" "az104-06-nic3" {
  name                = "az104-05-nic3"
  location            = var.location
  resource_group_name = azurerm_resource_group.az104-06-rg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet63.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "az104-06-vm3" {
  name                = "az104-06-vm3"
  resource_group_name = azurerm_resource_group.az104-06-rg1.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.az104-06-nic3.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}