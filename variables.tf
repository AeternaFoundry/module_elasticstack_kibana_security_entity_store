variable "kibana_security_entity_stores" {
  description = <<EOT
Map of kibana_security_entity_stores, attributes below
Optional:
    - allow_entity_type_shrink
    - entity_types
    - history_snapshot
    - log_extraction
    - space_id
    - started
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    allow_entity_type_shrink = optional(bool)
    entity_types             = optional(set(string))
    history_snapshot = optional(object({
      frequency = optional(string)
    }))
    log_extraction = optional(object({
      additional_index_patterns        = optional(list(string))
      delay                            = optional(string)
      docs_limit                       = optional(number)
      excluded_index_patterns          = optional(list(string))
      field_history_length             = optional(number)
      frequency                        = optional(string)
      lookback_period                  = optional(string)
      max_logs_per_page                = optional(number)
      max_logs_per_window              = optional(number)
      max_logs_per_window_cap_behavior = optional(string)
      max_time_window_size             = optional(string)
    }))
    space_id = optional(string)
    started  = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

