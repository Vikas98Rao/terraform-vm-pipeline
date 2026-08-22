data "azurerm_subnet" "Subnet" {
    for_each = var.network_interface
    name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
  
}
data "azurerm_public_ip" "PublicIP" {
    for_each = var.network_interface
    name = each.value.public_ip_name
    resource_group_name = each.value.resource_group_name
  
}