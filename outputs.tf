output "org_delegation_settings_delegated_mcp_access" {
  description = "Map of delegated_mcp_access values across all org_delegation_settings, keyed the same as var.org_delegation_settings except keys with no delegated_mcp_access are omitted"
  value       = { for k, v in mongodbatlas_org_delegation_settings.org_delegation_settings : k => v.delegated_mcp_access if v.delegated_mcp_access != null && length(v.delegated_mcp_access) > 0 }
}
output "org_delegation_settings_delegated_partner_access" {
  description = "Map of delegated_partner_access values across all org_delegation_settings, keyed the same as var.org_delegation_settings except keys with no delegated_partner_access are omitted"
  value       = { for k, v in mongodbatlas_org_delegation_settings.org_delegation_settings : k => v.delegated_partner_access if v.delegated_partner_access != null && length(v.delegated_partner_access) > 0 }
}
output "org_delegation_settings_idle_refresh_token_lifetime" {
  description = "Map of idle_refresh_token_lifetime values across all org_delegation_settings, keyed the same as var.org_delegation_settings except keys with no idle_refresh_token_lifetime are omitted"
  value       = { for k, v in mongodbatlas_org_delegation_settings.org_delegation_settings : k => v.idle_refresh_token_lifetime if v.idle_refresh_token_lifetime != null }
}
output "org_delegation_settings_maximum_refresh_token_lifetime" {
  description = "Map of maximum_refresh_token_lifetime values across all org_delegation_settings, keyed the same as var.org_delegation_settings except keys with no maximum_refresh_token_lifetime are omitted"
  value       = { for k, v in mongodbatlas_org_delegation_settings.org_delegation_settings : k => v.maximum_refresh_token_lifetime if v.maximum_refresh_token_lifetime != null }
}
output "org_delegation_settings_org_id" {
  description = "Map of org_id values across all org_delegation_settings, keyed the same as var.org_delegation_settings except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_org_delegation_settings.org_delegation_settings : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}

