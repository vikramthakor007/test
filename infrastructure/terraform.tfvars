rg_name = {
  rg1 = {
    name     = "suresh-rg"
    location = "centralindia"
  }
  rg2 = {
    name     = "suresh-rg1"
    location = "central india"
  }
}

vnets = {
  vnet1 = {
    name                = "prod-vnet"
    location            = "centralindia"
    resource_group_name = "suresh-rg"
    address_space       = ["10.0.0.0/16"]

    subnet = [
      {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}