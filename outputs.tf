output "grants_lookup_id" {
  description = "Map of id values across all grants_lookup, keyed the same as var.grants_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grants_lookup_future_grants_in" {
  description = "Map of future_grants_in values across all grants_lookup, keyed the same as var.grants_lookup except keys with no future_grants_in are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.future_grants_in) if v.future_grants_in != null && length(v.future_grants_in) > 0 }
}
output "grants_lookup_future_grants_to" {
  description = "Map of future_grants_to values across all grants_lookup, keyed the same as var.grants_lookup except keys with no future_grants_to are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.future_grants_to) if v.future_grants_to != null && length(v.future_grants_to) > 0 }
}
output "grants_lookup_grants" {
  description = "Map of grants values across all grants_lookup, keyed the same as var.grants_lookup except keys with no grants are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => v.grants if v.grants != null && length(v.grants) > 0 }
}
output "grants_lookup_grants_of" {
  description = "Map of grants_of values across all grants_lookup, keyed the same as var.grants_lookup except keys with no grants_of are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.grants_of) if v.grants_of != null && length(v.grants_of) > 0 }
}
output "grants_lookup_grants_on" {
  description = "Map of grants_on values across all grants_lookup, keyed the same as var.grants_lookup except keys with no grants_on are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.grants_on) if v.grants_on != null && length(v.grants_on) > 0 }
}
output "grants_lookup_grants_to" {
  description = "Map of grants_to values across all grants_lookup, keyed the same as var.grants_lookup except keys with no grants_to are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.grants_to) if v.grants_to != null && length(v.grants_to) > 0 }
}
output "grants_lookup_inherited_grants_in" {
  description = "Map of inherited_grants_in values across all grants_lookup, keyed the same as var.grants_lookup except keys with no inherited_grants_in are omitted"
  value       = { for k, v in data.snowflake_grants.grants_lookup : k => one(v.inherited_grants_in) if v.inherited_grants_in != null && length(v.inherited_grants_in) > 0 }
}

