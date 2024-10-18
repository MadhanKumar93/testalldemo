resource "google_compute_firewall" "firewall_rule" {
  name    = var.firewall
  network = var.network

  dynamic "allow" {
    for_each = var.allowed_rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  source_ranges = var.source_ranges
}
