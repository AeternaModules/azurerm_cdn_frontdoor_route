variable "cdn_frontdoor_routes" {
  description = <<EOT
Map of cdn_frontdoor_routes, attributes below
Required:
    - cdn_frontdoor_endpoint_id
    - cdn_frontdoor_origin_group_id
    - name
    - patterns_to_match
    - supported_protocols
Optional:
    - cdn_frontdoor_custom_domain_ids
    - cdn_frontdoor_origin_ids
    - cdn_frontdoor_origin_path
    - cdn_frontdoor_rule_set_ids
    - enabled
    - forwarding_protocol
    - https_redirect_enabled
    - link_to_default_domain
    - cache (block):
        - compression_enabled (optional)
        - content_types_to_compress (optional)
        - query_string_caching_behavior (optional)
        - query_strings (optional)
EOT

  type = map(object({
    cdn_frontdoor_endpoint_id       = string
    cdn_frontdoor_origin_group_id   = string
    name                            = string
    patterns_to_match               = list(string)
    supported_protocols             = set(string)
    cdn_frontdoor_custom_domain_ids = optional(set(string))
    cdn_frontdoor_origin_ids        = optional(list(string))
    cdn_frontdoor_origin_path       = optional(string)
    cdn_frontdoor_rule_set_ids      = optional(set(string))
    enabled                         = optional(bool)   # Default: true
    forwarding_protocol             = optional(string) # Default: "MatchRequest"
    https_redirect_enabled          = optional(bool)   # Default: true
    link_to_default_domain          = optional(bool)   # Default: true
    cache = optional(object({
      compression_enabled           = optional(bool) # Default: false
      content_types_to_compress     = optional(list(string))
      query_string_caching_behavior = optional(string) # Default: "IgnoreQueryString"
      query_strings                 = optional(list(string))
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_frontdoor_route's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.FrontDoorRouteName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cdn_frontdoor_endpoint_id
  #   source:    [from validate.FrontDoorEndpointID] !ok
  # path: cdn_frontdoor_endpoint_id
  #   source:    [from validate.FrontDoorEndpointID] err != nil
  # path: cdn_frontdoor_origin_group_id
  #   source:    [from validate.FrontDoorOriginGroupID] !ok
  # path: cdn_frontdoor_origin_group_id
  #   source:    [from validate.FrontDoorOriginGroupID] err != nil
  # path: cdn_frontdoor_origin_ids[*]
  #   source:    [from validate.FrontDoorOriginID] !ok
  # path: cdn_frontdoor_origin_ids[*]
  #   source:    [from validate.FrontDoorOriginID] err != nil
  # path: cdn_frontdoor_custom_domain_ids[*]
  #   source:    [from validate.FrontDoorCustomDomainID] !ok
  # path: cdn_frontdoor_custom_domain_ids[*]
  #   source:    [from validate.FrontDoorCustomDomainID] err != nil
  # path: cache.query_strings[*]
  #   source:    validation.StringDoesNotContainAny(...) - no translation rule yet, add one
  # path: cache.query_string_caching_behavior
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: cache.content_types_to_compress[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: forwarding_protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: supported_protocols[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

