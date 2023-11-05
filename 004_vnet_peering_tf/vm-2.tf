module "vm-2" {
  source              = "../modules/vm_linux"
  vm_name             = "vm-2"
  resource_group_name = "rg-vm-2"
  location            = azurerm_resource_group.rg-1.location
  subnet_id           = azurerm_subnet.subnet-1.id
  install_webapp      = true
}