# Trigger pipeline
module "Resource_Goup" {
  source         = "../Modules/ResourceGroup"
  resource_group = var.resourcegroup
}
module "Virtual_Network" {
  source          = "../Modules/VirtualNetwork"
  depends_on      = [module.Resource_Goup]
  virtual_network = var.virtualnetwork
}
module "Subnetwork" {
  source     = "../Modules/Subnetwork"
  depends_on = [module.Resource_Goup, module.Virtual_Network]
  subnet     = var.subnetwork
}
module "PublicIP" {
  source     = "../Modules/PublicIP"
  depends_on = [module.Resource_Goup]
  public_ip  = var.publicip

}
module "NIC" {
  source            = "../Modules/NetworkInterfaceCard"
  depends_on        = [module.Resource_Goup, module.PublicIP, module.Subnetwork, module.Virtual_Network]
  network_interface = var.nic
}

module "Linux_VM" {
  source                = "../Modules/VirtualMachine"
  depends_on            = [module.NIC, module.Resource_Goup]
  linux_virtual_machine = var.vm

}