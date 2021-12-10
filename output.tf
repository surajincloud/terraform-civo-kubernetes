output "kubeconfig" {
    value = civo_kubernetes_cluster.cluster.kubeconfig
}

output "master_ip" {
    value = civo_kubernetes_cluster.cluster.master_ip
}

output "cluster_id" {
    value = civo_kubernetes_cluster.cluster.id
}

output "api_endpoint" {
    value = civo_kubernetes_cluster.cluster.api_endpoint
}

output "installed_applications" {
    value = civo_kubernetes_cluster.cluster.installed_applications
}

output "firewall_id" {
    value = civo_firewall.firewall.id
}