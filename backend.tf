# Save Terraform State to GCP Storage
terraform {
  backend "gcs" {
    bucket  = "CHANGEME"
    prefix  = "terraform.tfstate"
  }
}