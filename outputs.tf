output "frontdoor_custom_https_configurations_id" {
  description = "Map of id values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "frontdoor_custom_https_configurations_custom_https_configuration" {
  description = "Map of custom_https_configuration values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.custom_https_configuration if v.custom_https_configuration != null && length(v.custom_https_configuration) > 0 }
}
output "frontdoor_custom_https_configurations_custom_https_provisioning_enabled" {
  description = "Map of custom_https_provisioning_enabled values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.custom_https_provisioning_enabled if v.custom_https_provisioning_enabled != null }
}
output "frontdoor_custom_https_configurations_frontend_endpoint_id" {
  description = "Map of frontend_endpoint_id values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.frontend_endpoint_id if v.frontend_endpoint_id != null && length(v.frontend_endpoint_id) > 0 }
}

