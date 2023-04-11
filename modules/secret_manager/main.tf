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
  count = length(var.secrets)

  secret_id = var.secrets[count.index].secret_name

  dynamic "replication" {
    for_each = var.secrets[count.index].replication

    content {
      location = replication.value
    }
  }
}

resource "google_secret_manager_secret_version" "secrets" {
  count = length(var.secrets)

  secret     = google_secret_manager_secret.secrets[count.index].id
  secret_data = var.secrets[count.index].secret_value
}
