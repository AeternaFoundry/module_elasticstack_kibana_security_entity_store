resource "elasticstack_kibana_security_entity_store" "kibana_security_entity_stores" {
  for_each = var.kibana_security_entity_stores

  allow_entity_type_shrink = each.value.allow_entity_type_shrink
  entity_types             = each.value.entity_types
  history_snapshot         = each.value.history_snapshot
  log_extraction           = each.value.log_extraction
  space_id                 = each.value.space_id
  started                  = each.value.started
  timeouts                 = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

