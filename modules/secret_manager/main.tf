
resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret_name

  dynamic "replication" {
    for_each = [1]

    content {
      automatic = true
    }
  }

  dynamic "secret_data" {
    for_each = var.secret_values

    content {
      secret_data = secret_data.value
    }
  }
}