# variables.tf
variable "secrets" {
  type = list(object({
    secret_name   = string
    secret_value  = string
  }))
}
