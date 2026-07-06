output "cdn_frontdoor_routes" {
  description = "All cdn_frontdoor_route resources"
  value       = azurerm_cdn_frontdoor_route.cdn_frontdoor_routes
}
output "cdn_frontdoor_routes_cache" {
  description = "List of cache values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cache]
}
output "cdn_frontdoor_routes_cdn_frontdoor_custom_domain_ids" {
  description = "List of cdn_frontdoor_custom_domain_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_custom_domain_ids]
}
output "cdn_frontdoor_routes_cdn_frontdoor_endpoint_id" {
  description = "List of cdn_frontdoor_endpoint_id values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_endpoint_id]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_group_id" {
  description = "List of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_origin_group_id]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_ids" {
  description = "List of cdn_frontdoor_origin_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_origin_ids]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_path" {
  description = "List of cdn_frontdoor_origin_path values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_origin_path]
}
output "cdn_frontdoor_routes_cdn_frontdoor_rule_set_ids" {
  description = "List of cdn_frontdoor_rule_set_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.cdn_frontdoor_rule_set_ids]
}
output "cdn_frontdoor_routes_enabled" {
  description = "List of enabled values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.enabled]
}
output "cdn_frontdoor_routes_forwarding_protocol" {
  description = "List of forwarding_protocol values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.forwarding_protocol]
}
output "cdn_frontdoor_routes_https_redirect_enabled" {
  description = "List of https_redirect_enabled values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.https_redirect_enabled]
}
output "cdn_frontdoor_routes_link_to_default_domain" {
  description = "List of link_to_default_domain values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.link_to_default_domain]
}
output "cdn_frontdoor_routes_name" {
  description = "List of name values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.name]
}
output "cdn_frontdoor_routes_patterns_to_match" {
  description = "List of patterns_to_match values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.patterns_to_match]
}
output "cdn_frontdoor_routes_supported_protocols" {
  description = "List of supported_protocols values across all cdn_frontdoor_routes"
  value       = [for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : v.supported_protocols]
}

