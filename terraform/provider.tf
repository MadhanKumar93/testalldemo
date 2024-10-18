locals {
  terraform_service_account = "238017122334-compute@developer.gserviceaccount.com"
}


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"  
    }
  }
}


provider "google" {
  alias = "impersonation"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]

}


#receive short-lived access token
data "google_service_account_access_token" "default" {
  provider               = google.impersonation
  target_service_account = local.terraform_service_account
  scopes                 = ["cloud-platform", "userinfo-email"]
  lifetime               = "3600s"

}


# default provider to use the the token
provider "google" {
  project         = var.project_id
  access_token    = data.google_service_account_access_token.default.access_token
  request_timeout = "60s"
}