/*
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"  
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone  
}
*/

module "network" {
  source            = "./modules/network"
  network_name      = var.network_name
  subnet_name       = var.subnet_name
  region            = var.region
  subnet_cidr_range = var.subnet_cidr_range
}

module "firewall" {
  source                  = "./modules/firewall"
  firewall_rule_name      = var.firewall_rule_name
  network                 = module.network.network_name
  allowed_rules           = var.allowed_rules
  source_ranges           = var.source_ranges
}


module "compute-engine" {
  source              = "./modules/compute-engine"
  vm_instance_names   = var.vm_instance_names
  vm_machine_type     = var.vm_machine_type
  vm_machine_image    = var.vm_machine_image
  zone                = var.zone
  vm_disk_size_gb     = var.vm_disk_size_gb
  network_name        = module.network.network_name
  subnet_name         = module.network.subnet_name
}
