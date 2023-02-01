resource "azurerm_virtual_network" "main" {
  name                 = "vnet-${var.project}-${var.environment_name}"
  address_space        = var.address_space
  location             = var.location
  resource_group_name  = var.resource_group

  tags = {
    project = var.project
  }
}

resource "azurerm_subnet" "private-subnet" {
  name                 = "private-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.address_private_subnet
}

resource "azurerm_subnet" "public-subnet" {
  name                 = "public-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.address_public_subnet
}