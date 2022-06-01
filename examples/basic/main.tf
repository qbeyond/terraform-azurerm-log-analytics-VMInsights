provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-dev-VMInsights-01"
  location = "West Europe"
}

resource "azurerm_log_analytics_workspace" "example" {
  name                = "law-customer-tfautoonly-vminsights-01"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

module "vminsights" {
  source                  = "../../"
  log_analytics_workspace = azurerm_log_analytics_workspace.example
}
