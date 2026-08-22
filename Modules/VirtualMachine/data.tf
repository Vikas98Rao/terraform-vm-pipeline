data "azurerm_network_interface" "NIC" {
    for_each = var.linux_virtual_machine
    name = each.value.nic_name
    resource_group_name = each.value.resource_group_name
  
}