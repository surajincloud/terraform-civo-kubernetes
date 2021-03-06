variable "cluster_name" {
    type = string
    description = "name of the kubernetes cluster"
}

variable "node_count" {
  type = number
  description = "number of target nodes"
  default = 3
}

variable "node_size" {
    type = string
    description = "instance type of the target nodes, choose from `g3.k3s.xsmall`, `g3.k3s.small`, `g3.k3s.medium`, `g3.k3s.large`, `g3.k3s.xlarge`, `g3.k3s.2xlarge`"
    default = "g3.k3s.medium"
  
}
# https://github.com/k3s-io/k3s/releases
variable "k3s_version" {
    type = string
    description = "supported version of the k3s cluster"
    default = ""
}

variable "network_name" {
    type = string
    description = "name of the existing network"
    default = ""
}

variable "firewall_name" {
    type = string
    description = "name of the existing firewall"
    default = ""
}

variable "cni" {
    type = string
    description = "CNI Plugin, available options: flannel, cilium"
    default = "cilium"
}

variable "tags" {
    type = string
    description = "Space separated list of tags"
}

variable "region" {
    type = string
    description = "Region for the Cluster"
}

variable "node_label" {
    type = string
    description = "(optional) describe your variable"
}
