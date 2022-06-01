resource "azurerm_log_analytics_datasource_windows_performance_counter" "logical_disk" {
  for_each = {
    VMInsights-LogicalDisk-Avg-DiskSecRead     = "Avg. Disk sec/Read"
    VMInsights-LogicalDisk-Avg-DiskSecTransfer = "Avg. Disk sec/Transfer"
    VMInsights-LogicalDisk-Avg-DiskSecWrite    = "Avg. Disk sec/Write"
    VMInsights-LogicalDisk-Disk-BytesSec       = "Disk Bytes/sec"
    VMInsights-LogicalDisk-Disk-ReadBytesSec   = "Disk Read Bytes/sec"
    VMInsights-LogicalDisk-Disk-ReadsSec       = "Disk Reads/sec"
    VMInsights-LogicalDisk-Disk-TransfersSec   = "Disk Transfers/sec"
    VMInsights-LogicalDisk-Disk-WriteBytesSec  = "Disk Write Bytes/sec"
    VMInsights-LogicalDisk-Disk-WritesSec      = "Disk Writes/sec"
    VMInsights-LogicalDisk-FreeMegabytes       = "Free Megabytes"
    VMInsights-LogicalDisk-Pct-Free-Space      = "% Free Space"
  }
  name                = each.key
  resource_group_name = var.log_analytics_workspace.resource_group_name
  workspace_name      = var.log_analytics_workspace.name
  object_name         = "LogicalDisk"
  instance_name       = "*"
  counter_name        = each.value
  interval_seconds    = 60
}

resource "azurerm_log_analytics_datasource_windows_performance_counter" "memory" {
  for_each = {
    VMInsights-Memory-AvailableMBytes = "Available MBytes"
  }
  name                = each.key
  resource_group_name = var.log_analytics_workspace.resource_group_name
  workspace_name      = var.log_analytics_workspace.name
  object_name         = "Memory"
  instance_name       = "*"
  counter_name        = each.value
  interval_seconds    = 60
}

resource "azurerm_log_analytics_datasource_windows_performance_counter" "network_adapter" {
  for_each = {
    VMInsights-NetworkAdapter-BytesReceived-sec = "Bytes Received/sec"
    VMInsights-NetworkAdapter-BytesSent-sec     = "Bytes Sent/sec"
  }
  name                = each.key
  resource_group_name = var.log_analytics_workspace.resource_group_name
  workspace_name      = var.log_analytics_workspace.name
  object_name         = "Network Adapter"
  instance_name       = "*"
  counter_name        = each.value
  interval_seconds    = 60
}

resource "azurerm_log_analytics_datasource_windows_performance_counter" "processor" {
  for_each = {
    VMInsights-Processor-Pct-Processor-Time-Total = "% Processor Time"
  }
  name                = each.key
  resource_group_name = var.log_analytics_workspace.resource_group_name
  workspace_name      = var.log_analytics_workspace.name
  object_name         = "Processor"
  instance_name       = "_Total"
  counter_name        = each.value
  interval_seconds    = 60
}
