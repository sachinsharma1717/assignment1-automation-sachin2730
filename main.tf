module "rgroup-82730" {
  source = "./modules/rgroup-82730"
  location = var.location
}

module "network-82730" {
  source = "./modules/network-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
}

module "common-82730" {
  source = "./modules/common-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
}

module "vmlinux-82730" {
  source = "./modules/vmlinux-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
  subnet_id = module.network-82730.subnet_id
  storage_account_blob_endpoint = module.common-82730.storage_account_blob_endpoint
  vm_names = { vm1 = "82730-linuxvm1", vm2 = "82730-linuxvm2", vm3 = "82730-linuxvm3" }
  admin_username = "azureuser"
  private_key_path = "~/.ssh/id_rsa"
  tags = {
    Assignment      = "CCGC 5502 Automation Assignment"
    Name            = "sachin.sharma"
    ExpirationDate  = "2024-12-31"
    Environment     = "Learning"
  }
}


module "vmwindows-82730" {
  source = "./modules/vmwindows-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
  subnet_id = module.network-82730.subnet_id
  storage_account_blob_endpoint = module.common-82730.storage_account_blob_endpoint
  tags = {
    Assignment      = "CCGC 5502 Automation Assignment"
    Name            = "sachin.sharma"
    ExpirationDate  = "2024-12-31"
    Environment     = "Learning"
  }
}

module "datadisk-82730" {
  source              = "./modules/datadisk-82730"
  location            = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
  vm_ids = [
    module.vmlinux-82730.vm_ids["vm1"],
    module.vmlinux-82730.vm_ids["vm2"],
    module.vmlinux-82730.vm_ids["vm3"],
    module.vmwindows-82730.vm_ids
  ]
}

module "loadbalancer-82730" {
  source = "./modules/loadbalancer-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
}

module "database-82730" {
  source = "./modules/database-82730"
  location = var.location
  resource_group_name = module.rgroup-82730.resource_group_name
  tags = {
    Assignment      = "CCGC 5502 Automation Assignment"
    Name            = "sachin.sharma"
    ExpirationDate  = "2024-12-31"
    Environment     = "Learning"
  }
}

