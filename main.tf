resource "mongodbatlas_org_delegation_settings" "org_delegation_settings" {
  for_each = var.org_delegation_settings

  org_id                         = each.value.org_id
  delegated_mcp_access           = each.value.delegated_mcp_access
  delegated_partner_access       = each.value.delegated_partner_access
  idle_refresh_token_lifetime    = each.value.idle_refresh_token_lifetime
  maximum_refresh_token_lifetime = each.value.maximum_refresh_token_lifetime
}

