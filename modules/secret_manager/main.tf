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
resource "google_secret_manager_secret" "secrets" {
  for_each = var.secrets

  secret_id = each.value.secret_name

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "secret_versions" {
  for_each = var.secrets

  secret     = google_secret_manager_secret.secrets[each.key].id
  secret_data = each.value.secret_value
}
