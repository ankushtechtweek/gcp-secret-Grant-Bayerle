/*
# main.tf
resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret.secret_name

    replication {
    automatic = true
  }

}

resource "google_secret_manager_secret_version" "secret_version" {
  secret     = google_secret_manager_secret.secret.id
  secret_data = var.secret.secret_value
}
*/


# Create secret manager secret and versions
resource "google_secret_manager_secret" "secrets" {
  for_each = var.secrets

  secret_id = each.key

  replication {
    automatic = true
  }

  dynamic "secret_version" {
    for_each = toset([each.value])
    content {
      secret_data = secret_version.value
    }
  }
}