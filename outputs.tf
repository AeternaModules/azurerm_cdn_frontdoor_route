output "cdn_frontdoor_routes_id" {
  description = "Map of id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_routes_cache" {
  description = "Map of cache values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cache if v.cache != null && length(v.cache) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_custom_domain_ids" {
  description = "Map of cdn_frontdoor_custom_domain_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_custom_domain_ids if v.cdn_frontdoor_custom_domain_ids != null && length(v.cdn_frontdoor_custom_domain_ids) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_endpoint_id" {
  description = "Map of cdn_frontdoor_endpoint_id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_endpoint_id if v.cdn_frontdoor_endpoint_id != null && length(v.cdn_frontdoor_endpoint_id) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_group_id" {
  description = "Map of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_origin_group_id if v.cdn_frontdoor_origin_group_id != null && length(v.cdn_frontdoor_origin_group_id) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_ids" {
  description = "Map of cdn_frontdoor_origin_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_origin_ids if v.cdn_frontdoor_origin_ids != null && length(v.cdn_frontdoor_origin_ids) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_path" {
  description = "Map of cdn_frontdoor_origin_path values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_origin_path if v.cdn_frontdoor_origin_path != null && length(v.cdn_frontdoor_origin_path) > 0 }
}
output "cdn_frontdoor_routes_cdn_frontdoor_rule_set_ids" {
  description = "Map of cdn_frontdoor_rule_set_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.cdn_frontdoor_rule_set_ids if v.cdn_frontdoor_rule_set_ids != null && length(v.cdn_frontdoor_rule_set_ids) > 0 }
}
output "cdn_frontdoor_routes_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.enabled if v.enabled != null }
}
output "cdn_frontdoor_routes_forwarding_protocol" {
  description = "Map of forwarding_protocol values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.forwarding_protocol if v.forwarding_protocol != null && length(v.forwarding_protocol) > 0 }
}
output "cdn_frontdoor_routes_https_redirect_enabled" {
  description = "Map of https_redirect_enabled values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.https_redirect_enabled if v.https_redirect_enabled != null }
}
output "cdn_frontdoor_routes_link_to_default_domain" {
  description = "Map of link_to_default_domain values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.link_to_default_domain if v.link_to_default_domain != null }
}
output "cdn_frontdoor_routes_name" {
  description = "Map of name values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cdn_frontdoor_routes_patterns_to_match" {
  description = "Map of patterns_to_match values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.patterns_to_match if v.patterns_to_match != null && length(v.patterns_to_match) > 0 }
}
output "cdn_frontdoor_routes_supported_protocols" {
  description = "Map of supported_protocols values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = { for k, v in azurerm_cdn_frontdoor_route.cdn_frontdoor_routes : k => v.supported_protocols if v.supported_protocols != null && length(v.supported_protocols) > 0 }
}

