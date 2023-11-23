variable "resource_group_name" {
  default = myResourceGroup

}
variable "location" {
  default = "East US"

}
variable "accessvirtual_network_name" {
  default = "my_vnet"
}
variable "addres_space" {
  default = ["10.0.0.0/16"]

}
variable "subnet_name" {
    default = "my_subnet_name"
  
}
