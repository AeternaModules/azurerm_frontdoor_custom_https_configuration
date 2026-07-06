output "frontdoor_custom_https_configurations" {
  description = "All frontdoor_custom_https_configuration resources"
  value       = azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations
}
output "frontdoor_custom_https_configurations_custom_https_configuration" {
  description = "List of custom_https_configuration values across all frontdoor_custom_https_configurations"
  value       = [for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : v.custom_https_configuration]
}
output "frontdoor_custom_https_configurations_custom_https_provisioning_enabled" {
  description = "List of custom_https_provisioning_enabled values across all frontdoor_custom_https_configurations"
  value       = [for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : v.custom_https_provisioning_enabled]
}
output "frontdoor_custom_https_configurations_frontend_endpoint_id" {
  description = "List of frontend_endpoint_id values across all frontdoor_custom_https_configurations"
  value       = [for k, v in azurerm_frontdoor_custom_https_configuration.frontdoor_custom_https_configurations : v.frontend_endpoint_id]
}

