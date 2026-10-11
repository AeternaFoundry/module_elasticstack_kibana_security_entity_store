output "kibana_security_entity_stores_id" {
  description = "Map of id values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_security_entity_stores_allow_entity_type_shrink" {
  description = "Map of allow_entity_type_shrink values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no allow_entity_type_shrink are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.allow_entity_type_shrink if v.allow_entity_type_shrink != null }
}
output "kibana_security_entity_stores_entity_types" {
  description = "Map of entity_types values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no entity_types are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.entity_types if v.entity_types != null && length(v.entity_types) > 0 }
}
output "kibana_security_entity_stores_history_snapshot" {
  description = "Map of history_snapshot values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no history_snapshot are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.history_snapshot if v.history_snapshot != null && length(v.history_snapshot) > 0 }
}
output "kibana_security_entity_stores_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_security_entity_stores_log_extraction" {
  description = "Map of log_extraction values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no log_extraction are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.log_extraction if v.log_extraction != null && length(v.log_extraction) > 0 }
}
output "kibana_security_entity_stores_space_id" {
  description = "Map of space_id values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_security_entity_stores_started" {
  description = "Map of started values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no started are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.started if v.started != null }
}
output "kibana_security_entity_stores_status_json" {
  description = "Map of status_json values across all kibana_security_entity_stores, keyed the same as var.kibana_security_entity_stores except keys with no status_json are omitted"
  value       = { for k, v in elasticstack_kibana_security_entity_store.kibana_security_entity_stores : k => v.status_json if v.status_json != null && length(v.status_json) > 0 }
}

