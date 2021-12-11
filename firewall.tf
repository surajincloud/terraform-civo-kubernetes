resource "civo_firewall" "firewall" {
  count      = var.firewall_name != "" ? 0 : 1
  name       = "${var.cluster_name}-firewall"
  network_id = local.network_id
}

# Create a firewall rule to access cluster
resource "civo_firewall_rule" "cluster-access" {
  count       = var.firewall_name != "" ? 0 : 1
  firewall_id = civo_firewall.firewall[0].id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = ["0.0.0.0/0"]
  direction   = "ingress"
  label       = "kubernetes-api-server"
}

data "civo_firewall" "firewall" {
  count = var.firewall_name != "" ? 1 : 0
  name  = var.firewall_name
}