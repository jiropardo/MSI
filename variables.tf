variable "account_id" {
  description = "The Azure account ID for the Databricks workspace."
  type        = string
}

variable "azure_tenant_id" {
  description = "The Azure tenant ID for the Databricks workspace."
  type        = string
}

#pass this as an environment variable
#export TF_VAR_account_id=""
#export TF_VAR_azure_tenant_id=""