output "network_name" {
  description = "The name of the created VPC network"
  value       = google_compute_network.vpc-infra.name
}

output "subnet_name" {
  description = "The name of the created subnetwork"
  value       = google_compute_subnetwork.subnet-infra.name
}

output "subnet_ip_cidr_range" {
  description = "The IP CIDR range of the created subnetwork"
  value       = google_compute_subnetwork.subnet-infra.ip_cidr_range
}

