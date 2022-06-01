<!-- BEGIN_TF_DOCS -->
# Log Analytics Workspace VMInsights
Enables the VMInsights Solution for a Workspace with Linux and Windows PerformanceCounters.
**/

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_datasource_windows_performance_counter.logical_disk](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_datasource_windows_performance_counter) | resource |
| [azurerm_log_analytics_datasource_windows_performance_counter.memory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_datasource_windows_performance_counter) | resource |
| [azurerm_log_analytics_datasource_windows_performance_counter.network_adapter](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_datasource_windows_performance_counter) | resource |
| [azurerm_log_analytics_datasource_windows_performance_counter.processor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_datasource_windows_performance_counter) | resource |
| [azurerm_log_analytics_solution.VMInsights](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) | resource |
| [azurerm_resource_group_template_deployment.linux_performance_counters](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_template_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_analytics_workspace"></a> [log\_analytics\_workspace](#input\_log\_analytics\_workspace) | Workspace to Enable VMInsights on | <pre>object({<br>    id                  = string<br>    name                = string<br>    resource_group_name = string<br>    location            = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->