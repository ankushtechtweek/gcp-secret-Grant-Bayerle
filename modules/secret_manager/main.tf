
/*
# main.tf
resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret.secret_name

    replication {
    automatic = true
  }

}
*/

resource "google_secret_manager_secret_version" "secret_version" {
  secret     = google_secret_manager_secret.secret.id
  secret_data = var.secret.secret_value
}

resource "google_secret_manager_secret" "my_secret" {
  secret_id = "my-secret"

  dynamic "secret_version" {
    for_each = var.secret.secret

    content {
      secret_data = "${secret_version.value}"
    }
  }
}