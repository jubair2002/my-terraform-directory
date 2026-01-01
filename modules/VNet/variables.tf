variable "rg_name" {
  type = string
}
variable "rg_location" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "vnet_addr_space" {
  type = list(string)
}
variable "vnet_dns_servers" {
  type = list(string)
}
