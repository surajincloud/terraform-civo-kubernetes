resource "civo_kubernetes_cluster" "cluster" {
    name = var.cluster_name
    num_target_nodes = var.node_count
    
    target_nodes_size = var.node_size
    # network
    network_id = local.network_id
    firewall_id = local.firewall_id # required
}
