resource "google_compute_network" "vpc-infra" {
  name                     = var.network_name
  auto_create_subnetworks  = false
}

resource "google_compute_subnetwork" "subnet-infra" {
  name                     = var.subnet_name
  region                   = var.region
  network                  = google_compute_network.vpc-infra.self_link
  ip_cidr_range            = var.subnet_cidr_range
  private_ip_google_access = true
}


resource "google_compute_firewall" "allow-http-ssh" {
  name                     = var.firewall_rule
  network                  = google_compute_network.vpc-infra.name

  dynamic "allow" {
    for_each = var.allowed_rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  source_ranges = var.source_ranges
}


