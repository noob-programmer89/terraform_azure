rgs = {
  rg-maka = {
    name     = "rg-maka-dev"
    location = "centralindia"
  }

  # rg-mk = {
  #     name = "rg-mk"
  #     location = "eastus"
  # }
}

storage_accounts = {
  storage_account_maka = {
    name                     = "storagemakadev21082026"
    location                 = "centralindia"
    resource_group_name      = "rg-maka-dev"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    container_name           = "makadevcontainer"
  }
}