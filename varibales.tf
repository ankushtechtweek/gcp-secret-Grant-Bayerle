variable "project_name" {

description = "Project name"
type = any
}

variable "GOOGLE_CREDENTIALS" {
  type = any
}

variable "region" {

description = "Region for the enviornment"
type = any
}


variable "secret_values" {
  type    = any
 # default = "my_secret"
}
