resource "civo_firewall" "firewall" {
  name = var.name
  network_id = civo_network.network.id
}

# Create a firewall rule to access cluster
# check if user wants public access else asks for cidr
resource "civo_firewall_rule" "cluster-access" {
    firewall_id = civo_firewall.firewall.id
    protocol = "tcp"
    start_port = "6443"
    end_port = "6443"
    cidr = ["0.0.0.0/0"]
    direction = "ingress"
    label = "kubernetes-api-server"
}
