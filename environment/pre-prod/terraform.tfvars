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

vnets = {
  vnet-maka = {
    name                = "vnet-maka-dev"
    location            = "centralindia"
    resource_group_name = "rg-maka-dev"
    address_space       = ["17.11.0.0/16"]
  }
}

subnets = {
  subnet-front = {
    name                 = "subnet-frontend-dev"
    resource_group_name  = "rg-maka-dev"
    virtual_network_name = "vnet-maka-dev"
    address_prefixes     = ["17.11.1.0/24"]
  }

  subnet-back = {
    name                 = "subnet-backend-dev"
    resource_group_name  = "rg-maka-dev"
    virtual_network_name = "vnet-maka-dev"
    address_prefixes     = ["17.11.2.0/24"]
  }

  subnet-database = {
    name                 = "subnet-database-dev"
    resource_group_name  = "rg-maka-dev"
    virtual_network_name = "vnet-maka-dev"
    address_prefixes     = ["17.11.3.0/24"]
  }

  subnet-bastion = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-maka-dev"
    virtual_network_name = "vnet-maka-dev"
    address_prefixes     = ["17.11.4.0/24"]
  }

  subnet-gateway = {
    name                 = "AppGatewaySubnet"
    resource_group_name  = "rg-maka-dev"
    virtual_network_name = "vnet-maka-dev"
    address_prefixes     = ["17.11.5.0/24"]
  }
}

pips = {
  pip-bastion = {
    name                = "pip-bastion-dev"
    location            = "centralindia"
    resource_group_name = "rg-maka-dev"
    allocation_method   = "Static"
  }

  pip-gw = {
    name                = "pip-gateway-dev"
    location            = "centralindia"
    resource_group_name = "rg-maka-dev"
    allocation_method   = "Static"
  }
}
