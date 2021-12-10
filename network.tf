resource "civo_network" "network" {
  count = var.network_name != "" ? 0 : 1
  label = var.name
}

data "civo_network" "network" {
  count = var.network_name != "" ? 1 : 0
  label = var.network_name
}