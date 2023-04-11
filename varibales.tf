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

variable "secrets" {
  type = list(object({
    secret_name   = string
    secret_value  = string
  }))
}
