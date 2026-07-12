output "frontdoor_custom_https_configurations_id" {
  description = "Map of id values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.id }
}
output "frontdoor_custom_https_configurations_custom_https_configuration" {
  description = "Map of custom_https_configuration values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.custom_https_configuration }
}
output "frontdoor_custom_https_configurations_custom_https_provisioning_enabled" {
  description = "Map of custom_https_provisioning_enabled values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.custom_https_provisioning_enabled }
}
output "frontdoor_custom_https_configurations_frontend_endpoint_id" {
  description = "Map of frontend_endpoint_id values across all frontdoor_custom_https_configurations, keyed the same as var.frontdoor_custom_https_configurations"
  value       = { for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : k => v.frontend_endpoint_id }
}

