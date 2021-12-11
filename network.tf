resource "civo_network" "network" {
  count = var.network_name != "" ? 0 : 1
  label = "${var.cluster_name}-network"
}

data "civo_network" "network" {
  count = var.network_name != "" ? 1 : 0
  label = var.network_name
}