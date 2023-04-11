variable "project_name" {

description = "Project name"
type = any
}

variable "GOOGLE_CREDENTIALS" {
  type = string
}


variable "region" {

description = "Region for the enviornment"
type = any
}


variable "secret" {
  type    = any
 # default = "my_secret"
}
