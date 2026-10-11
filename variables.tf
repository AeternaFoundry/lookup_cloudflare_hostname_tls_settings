variable "hostname_tls_settings_lookup" {
  description = <<EOT
Map of hostname_tls_settings_lookup, attributes below
Required:
    - setting_id
    - zone_id
Optional:
    - max_items
EOT

  type = map(object({
    setting_id = string
    zone_id    = string
    max_items  = optional(number)
  }))
}

