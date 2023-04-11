module "secret" {
  source = "modules/secret_manager"

  project_name = var.project_name
  region       = var.region 
  secret       = var.secret
}
