provider "google" {
  project = "${var.project_name}"
    credentials = var.google_credentials
  region  = "${var.region}"
}


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.5"
    }
  }
}


