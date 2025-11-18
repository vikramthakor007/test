module "resource_group" {
  source  = "../modules/azurerm_resource_group"
  rg_name = var.rg_name

}
module "azurerm_virtual_network" {
  depends_on = [module.resource_group]
  source     = "../modules/azurerm_virtual_network"
  vnets      = var.vnets

}

# module "frontend_vm" {
#   depends_on          = [module.azurerm_virtual_network, module.subneta, module.resource_group]
#   source              = "../azurerm_virtual_machine"
#   resource_group_name = "vikram-rg"
#   location            = "centralindia"
#   vnet_name           = "vnetsb"
#   subnet_name         = "frontend-subnet"
#   vm_name             = "frontendvm"
#   nic_name            = "nic-frontend"
#   vm_size             = "Standard_F2"
#   admin_username      = "azureuser"
#   admin_password      = "Vikram@12345"
#   publisher           = "Canonical"
#   offer               = "UbuntuServer"
#   sku                 = "22_04-lts"
# }

# module "backend_vm" {
#   depends_on          = [module.azurerm_virtual_network, module.subneta, module.resource_group]
#   source              = "../azurerm_virtual_machine"
#   resource_group_name = "vikram-rg"
#   location            = "centralindia"
#   vnet_name           = "vnetsb"
#   subnet_name         = "backen-subnet"
#   vm_name             = "backenddvm"
#   nic_name            = "nic-frontend"
#   vm_size             = "Standard_F2"
#   admin_username      = "azureuser"
#   admin_password      = "Vikram@12345"
#   publisher           = "Canonical"
#   offer               = "UbuntuServer"
#   sku                 = "22_04-lts"
# }
