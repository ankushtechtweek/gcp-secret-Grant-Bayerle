provider "google" {
  project = "${var.project_name}"
    credentials = var.google_credentials
  region  = "${var.region}"
}

