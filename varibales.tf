variable "project_name" {

description = "Project name"
type = any
}

variable "google_credentials" {
  type = string
}


variable "region" {

description = "Region for the enviornment"
type = any
}


variable "secret" {
  type    = list(any)
  default = "my_secret"
}
