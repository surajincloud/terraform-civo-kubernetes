module "civo-cluster-1" {
    source = "./.."
    name = "surajincloud-k8s"
    #auth
    civo_token = var.civo_token

    #advanced
    # network_name = "surajincloud" # if you already have the network
    # firewall_name = "surajincloud"

    #tags
    tags = ["cluster", "production"]
}

# Set the variable value in *.tfvars file or using -var="civo_token=..." CLI flag
variable "civo_token" {}
