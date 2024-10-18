/*
locals {
  terraform_service_account = "238017122334-compute@developer.gserviceaccount.com"
}
*/

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
