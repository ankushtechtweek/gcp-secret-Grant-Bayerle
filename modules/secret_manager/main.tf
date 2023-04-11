resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret.secret_name

  replication {
    automatic = true
  }

  dynamic "secret_version" {
    for_each = var.secret.secret_values

    content {
      secret_data = secret_version.value
    }
  }
}