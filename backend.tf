resource "google_storage_bucket" "terraform_state" {
  name          = "terraform-state-${var.gcp_project}-${var.cluster_name}"
  location      = "EU"
  force_destroy = false
}

terraform {
  backend "gcs" {
    prefix = "terraform.tfstate"
  }
}
