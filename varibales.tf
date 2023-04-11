variable "project_name" {

description = "Project name"
  
}

variable "google_credentials" {
  type = string
}


variable "region" {

description = "Region for the enviornment"

}


variable "secret" {
  type    = list(any)
  default = "my_secret"
}
