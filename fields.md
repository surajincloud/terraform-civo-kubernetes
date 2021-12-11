## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_civo"></a> [civo](#requirement\_civo) | >= 1.0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_civo"></a> [civo](#provider\_civo) | >= 1.0.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [civo_firewall.firewall](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall) | resource |
| [civo_firewall_rule.cluster-access](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall_rule) | resource |
| [civo_kubernetes_cluster.cluster](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_cluster) | resource |
| [civo_network.network](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/network) | resource |
| [civo_firewall.firewall](https://registry.terraform.io/providers/civo/civo/latest/docs/data-sources/firewall) | data source |
| [civo_network.network](https://registry.terraform.io/providers/civo/civo/latest/docs/data-sources/network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | name of the kubernetes cluster | `string` | n/a | yes |
| <a name="input_firewall_name"></a> [firewall\_name](#input\_firewall\_name) | name of the existing firewall | `string` | `""` | no |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | supported version of the k3s cluster | `string` | `""` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | name of the existing network | `string` | `""` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | number of target nodes | `number` | `3` | no |
| <a name="input_node_size"></a> [node\_size](#input\_node\_size) | instance type of the target nodes, choose from `g3.k3s.xsmall`, `g3.k3s.small`, `g3.k3s.medium`, `g3.k3s.large`, `g3.k3s.xlarge`, `g3.k3s.2xlarge` | `string` | `"g3.k3s.medium"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_endpoint"></a> [api\_endpoint](#output\_api\_endpoint) | The API server endpoint of the cluster |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the cluster |
| <a name="output_firewall_id"></a> [firewall\_id](#output\_firewall\_id) | The firewall ID to use for this cluster |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | The kubeconfig of the cluster |
| <a name="output_master_ip"></a> [master\_ip](#output\_master\_ip) | The IP address of the master node |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | The network ID to use for this cluster |
