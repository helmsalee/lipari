#
# Version constraints for Providers
#
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}
#
# Provider Configuration
#
provider "google" {
  project = var.project
}