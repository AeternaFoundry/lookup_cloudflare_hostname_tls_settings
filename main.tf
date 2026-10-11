data "cloudflare_hostname_tls_settings" "hostname_tls_settings_lookup" {
  for_each = var.hostname_tls_settings_lookup

  setting_id = each.value.setting_id
  zone_id    = each.value.zone_id
  max_items  = each.value.max_items
}

