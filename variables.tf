variable "frontdoor_custom_https_configurations" {
  description = <<EOT
Map of frontdoor_custom_https_configurations, attributes below
Required:
    - custom_https_provisioning_enabled
    - frontend_endpoint_id
Optional:
    - custom_https_configuration (block):
        - azure_key_vault_certificate_secret_name (optional)
        - azure_key_vault_certificate_secret_version (optional)
        - azure_key_vault_certificate_vault_id (optional)
        - certificate_source (optional)
EOT

  type = map(object({
    custom_https_provisioning_enabled = bool
    frontend_endpoint_id              = string
    custom_https_configuration = optional(object({
      azure_key_vault_certificate_secret_name    = optional(string)
      azure_key_vault_certificate_secret_version = optional(string)
      azure_key_vault_certificate_vault_id       = optional(string)
      certificate_source                         = optional(string) # Default: "FrontDoor"
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_frontdoor_custom_https_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: frontend_endpoint_id
  #   source:    [from validate.FrontendEndpointID] !ok
  # path: frontend_endpoint_id
  #   source:    [from validate.FrontendEndpointID] err != nil
}

