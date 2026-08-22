module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "azurerm_storage_account" {
  depends_on       = [module.azurerm_resource_group]
  source           = "../../modules/azurerm_storage_account"
  storage_accounts = var.storage_accounts
}

module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_resource_group, module.azurerm_virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}
