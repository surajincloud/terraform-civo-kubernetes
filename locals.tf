locals {
  network_id = (var.network_name == "") ? civo_network.network[0].id : data.civo_network.network[0].id
  firewall_id = (var.firewall_name == "") ? civo_firewall.firewall[0].id : data.civo_firewall.firewall[0].id

  node_count  = (var.node_count == "") ? 3 : var.node_count
}
