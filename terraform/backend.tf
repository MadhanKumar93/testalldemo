# Set up Terraform remote backend to store state in the GCS bucket
terraform {
  backend "gcs" {
    bucket                      = "mk-terraform-state"
    prefix                      = "terraform/state"
    #impersonate_service_account = "238017122334-compute@developer.gserviceaccount.com"
  }
}
