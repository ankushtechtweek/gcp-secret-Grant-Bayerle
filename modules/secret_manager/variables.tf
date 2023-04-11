# variables.tf
variable "secret_name" {
  type = string
}

variable "secret_values" {
  type = map(string)
}