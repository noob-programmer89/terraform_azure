resource "azurerm_storage_account" "this" {
  for_each                 = var.storage_accounts
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_storage_container" "this" {
  for_each           = var.storage_accounts
  name               = each.value.container_name
  storage_account_id = azurerm_storage_account.this[each.key].id
}