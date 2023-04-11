resource "google_secret_manager_secret" "secret" {
  secret_id = "sasda"

  replication {
    automatic = true
  }

  dynamic "secret_version" {
    for_each = var.secret_values

    content {
      secret_data = secret_version.value
    }
  }
}