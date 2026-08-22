resourcegroup = {
  rg1 = {
    name = "rg-airport"
    location = "centralindia"
    
  }
}

virtualnetwork = {
  vnet1 = {
     name = "airport_network"
      location = "centralindia"
      resource_group_name = "rg-airport"
      address_space = ["10.0.0.0/16"]
  }
}

subnetwork = {
  snet1 = {
    name = "frontend_network"
      resource_group_name = "rg-airport"
      virtual_network_name = "airport_network"
      address_prefixes = ["10.0.0.0/28"]
    
  }
    snet2 = {
    name = "backend_network"
      resource_group_name = "rg-airport"
      virtual_network_name = "airport_network"
      address_prefixes = ["10.0.0.16/28"]
    
  }
}
publicip = {
  pip1 = {
      name = "publicaccess"
      location = "centralindia"
      resource_group_name = "rg-airport"
      allocation_method  = "Static"
    
  }
}

nic = {
  nic1 = {
    name = "frontend_nic"
    resource_group_name = "rg-airport"
    location = "centralindia"
    virtual_network_name = "airport_network"
    subnet_name = "frontend_network"
    public_ip_name = "publicaccess"
  }
  nic2 = {
    name = "backend_nic"
    resource_group_name = "rg-airport"
    location = "centralindia"
    virtual_network_name = "airport_network"
    subnet_name = "backend_network"
    public_ip_name = "publicaccess"
  }
}
vm = {
  vm1 = {
    vm_name = "linux_frontend"
    location = "centralindia"
    resource_group_name = "rg-airport"
    nic_name = "frontend_nic"
    size                = "Standard_D2s_v3"
    admin_username      = "devopsadmin"
    admin_password      = "ABCdef@123"

  }
  vm2 = {
    vm_name = "linux_backend"
    location = "centralindia"
    resource_group_name = "rg-airport"
    nic_name = "backend_nic"
    size                = "Standard_D2s_v3"
    admin_username      = "devopsadmin"
    admin_password      = "ABCdef@123"

  }
}