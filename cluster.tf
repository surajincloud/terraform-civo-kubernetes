# Create a cluster
resource "civo_kubernetes_cluster" "cluster" {
    name = var.name
    num_target_nodes = var.node_count
    
    target_nodes_size = var.node_size
    # network
    network_id = civo_network.network.id
    firewall_id = civo_firewall.firewall.id # required


    #tags
    # tags = var.tags
}