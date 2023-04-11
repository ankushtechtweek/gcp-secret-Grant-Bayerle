output "secret_name" {
  value = google_secret_manager_secret.secret.name
}

output "secret_version_name" {
  value = google_secret_manager_secret_version.secret_version.name
}