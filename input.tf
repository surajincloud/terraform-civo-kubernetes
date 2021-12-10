variable "civo_token" {}


variable "name" {
    type = string
    description = "name of the kubernetes cluster"
}

variable "node_count" {
  type = number
  description = "number of target nodes"
  default = 2
}

variable "node_size" {
    type = string
    description = "instance type of the target nodes"
    default = ""
  
}
# https://github.com/k3s-io/k3s/releases
variable "k8s_version" {
    type = string
    description = "supported version of the kubernetes cluster"
    default = ""
}

variable "network_name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}


variable "applications" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "tags" {
    type = list(string)
    description = "(optional) describe your variable"
    default = []
}