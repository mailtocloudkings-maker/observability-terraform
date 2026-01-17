terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  # Use the GCP Project ID (machine-readable), not the display name
  project = "white-outlook-480705-b1"
  region  = "us-central1"
}
