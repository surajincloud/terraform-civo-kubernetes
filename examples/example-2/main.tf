terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = ">= 1.0.7"
    }
  }
}

# Set the variable value in *.tfvars file or using -var="civo_token=..." CLI flag 
# or set TF_VAR_civo_token environment variable
variable "civo_token" {}

# Configure the Civo Provider
provider "civo" {
  token = var.civo_token
  region = local.region
}

locals {
  region = "LON1"
}

module "civo-cluster-2" {
    source = "./../.."
    cluster_name = "surajincloud-k8s"

    network_name = "surajincloud" # if you already have the network
    firewall_name = "surajincloud" #if you already have the firewall

}

