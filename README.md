# terraform-civo-kubernets

Terraform module for Civo Cloud Kubernetes

## Usage

```
module "civo-cluster-1" {
    source = "./.."
    cluster_name = "surajincloud-k8s"

    network_name = "surajincloud"
    firewall_name = "surajincloud"

}
```

## Field References

Checkout [fields.md](./fields.md)

## Examples

[examples](./examples) has various examples which covers most of the scenarios.

## Contributing

* Feel free to contribute via issues, PR :)  
