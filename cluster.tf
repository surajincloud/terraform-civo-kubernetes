resource "civo_kubernetes_cluster" "cluster" {
  name = var.cluster_name

  kubernetes_version = var.k3s_version

  # nodes
  pools {
    label      = var.node_label
    node_count = var.node_count
    size       = var.node_size
  }

  # deprecated (we will remove this in next release)
  num_target_nodes  = var.node_count
  target_nodes_size = var.node_size

  # network
  network_id  = local.network_id
  firewall_id = local.firewall_id # required

  region = var.region
  cni    = var.cni

  tags = var.tags
}
