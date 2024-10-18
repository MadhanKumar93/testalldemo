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




