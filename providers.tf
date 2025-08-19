terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
     databricks = {
      source  = "databricks/databricks"
    }
  }
}

provider "databricks" {
  host   = "https://accounts.azuredatabricks.net"
  azure_use_msi = true
  account_id = var.account_id
  auth_type = "azure-msi"
  azure_tenant_id = var.azure_tenant_id
}


data "databricks_mws_workspaces" "all" {}

output "all_mws_workspaces" {
  value = data.databricks_mws_workspaces.all.ids
}