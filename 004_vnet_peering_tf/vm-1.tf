module "vm-1" {
  source              = "../modules/vm_linux"
  vm_name             = "vm-1"
  resource_group_name = "rg-vm-1"
  location            = azurerm_resource_group.rg-1.location
  subnet_id           = azurerm_subnet.subnet-1.id
  install_webapp      = true
}