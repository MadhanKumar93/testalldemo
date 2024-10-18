
resource "google_compute_instance" "workload" {
  for_each = var.vm_instance_names

  name         = each.value
  machine_type = var.vm_machine_type[each.key]
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.vm_machine_image[each.key]
      size  = var.vm_disk_size_gb
      type  = "pd-balanced"
    }
  }

  network_interface {
    network    = var.network_name
    subnetwork = var.subnet_name

    access_config {
      // Ephemeral public IP
    }
  }
}
