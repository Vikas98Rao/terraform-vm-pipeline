variable "resourcegroup" {
    type = map(object({
      name = string
      location = string 
    }))
  
}

variable "virtualnetwork" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      address_space = list(string) 
    }))
  
}

variable "subnetwork" {
    type = map(object({
      name = string
      resource_group_name = string
      virtual_network_name = string
      address_prefixes = list(string)
    }))
  
}

variable "publicip" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      allocation_method = string 
    }))
  
}
variable "nic" {
  
}
variable "vm" {
  
}