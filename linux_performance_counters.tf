resource "azurerm_resource_group_template_deployment" "linux_performance_counters" {
  name                = "${var.log_analytics_workspace.name}linuxperformancecounters"
  resource_group_name = var.log_analytics_workspace.resource_group_name
  deployment_mode     = "Incremental"

  template_content = file(abspath("${path.module}/linux_performance_counters.json"))

  parameters_content = jsonencode({
    workspaceName = {
      value = var.log_analytics_workspace.name
    }
    location = {
      value = var.log_analytics_workspace.location
    }
  })
}
