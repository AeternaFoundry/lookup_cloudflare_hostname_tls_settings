output "hostname_tls_settings_lookup_max_items" {
  description = "Map of max_items values across all hostname_tls_settings_lookup, keyed the same as var.hostname_tls_settings_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_hostname_tls_settings.hostname_tls_settings_lookup : k => v.max_items if v.max_items != null }
}
output "hostname_tls_settings_lookup_result" {
  description = "Map of result values across all hostname_tls_settings_lookup, keyed the same as var.hostname_tls_settings_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_hostname_tls_settings.hostname_tls_settings_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "hostname_tls_settings_lookup_setting_id" {
  description = "Map of setting_id values across all hostname_tls_settings_lookup, keyed the same as var.hostname_tls_settings_lookup except keys with no setting_id are omitted"
  value       = { for k, v in data.cloudflare_hostname_tls_settings.hostname_tls_settings_lookup : k => v.setting_id if v.setting_id != null && length(v.setting_id) > 0 }
}
output "hostname_tls_settings_lookup_zone_id" {
  description = "Map of zone_id values across all hostname_tls_settings_lookup, keyed the same as var.hostname_tls_settings_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_hostname_tls_settings.hostname_tls_settings_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

