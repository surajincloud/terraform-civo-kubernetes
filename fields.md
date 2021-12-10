## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_civo"></a> [civo](#provider\_civo) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [civo_firewall.firewall](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall) | resource |
| [civo_firewall_rule.cluster-access](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall_rule) | resource |
| [civo_kubernetes_cluster.cluster](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_cluster) | resource |
| [civo_network.network](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_applications"></a> [applications](#input\_applications) | (optional) describe your variable | `string` | `""` | no |
| <a name="input_civo_token"></a> [civo\_token](#input\_civo\_token) | Set the variable value in *.tfvars file or using -var="civo\_token=..." CLI flag | `any` | n/a | yes |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | supported version of the kubernetes cluster | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | name of the kubernetes cluster | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | (optional) describe your variable | `string` | `""` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | number of target nodes | `number` | `2` | no |
| <a name="input_node_size"></a> [node\_size](#input\_node\_size) | instance type of the target nodes | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) describe your variable | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_endpoint"></a> [api\_endpoint](#output\_api\_endpoint) | n/a |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | n/a |
| <a name="output_firewall_id"></a> [firewall\_id](#output\_firewall\_id) | n/a |
| <a name="output_installed_applications"></a> [installed\_applications](#output\_installed\_applications) | n/a |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | n/a |
| <a name="output_master_ip"></a> [master\_ip](#output\_master\_ip) | n/a |
