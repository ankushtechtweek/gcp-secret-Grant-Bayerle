

# main.tf
resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret.secret_name

    replication {
    automatic = true
  }
  
}

resource "google_secret_manager_secret_version" "secret_version" {
  secret = google_secret_manager_secret.secret.id
  payload {
    data = var.secret.secret_value
  }
}

