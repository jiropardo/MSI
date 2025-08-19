data "databricks_mws_workspaces" "all" {}

output "all_mws_workspaces" {
  value = data.databricks_mws_workspaces.all.ids
}