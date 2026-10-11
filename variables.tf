variable "org_delegation_settings" {
  description = <<EOT
Map of org_delegation_settings, attributes below
Required:
    - org_id
Optional:
    - delegated_mcp_access
    - delegated_partner_access
    - idle_refresh_token_lifetime
    - maximum_refresh_token_lifetime
EOT

  type = map(object({
    org_id                         = string
    delegated_mcp_access           = optional(string)
    delegated_partner_access       = optional(string)
    idle_refresh_token_lifetime    = optional(number)
    maximum_refresh_token_lifetime = optional(number)
  }))
}

