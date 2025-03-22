variable "varvn" {}

resource "azurerm_virtual_network" "vn-block" {
    for_each = var.varvn
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}