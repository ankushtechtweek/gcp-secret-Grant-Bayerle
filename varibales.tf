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
  type = map
  default = {
    "OPENAI_API_KEY" = ""
    "RECALL_API_KEY" = ""
    "RECALL_SIGN_TOKEN" = ""
    "SENDGRID_API_KEY" = ""
    "TYPESENSE_SEARCH_ONLY_KEY" = ""
    "TYPESENSE_WRITE_ONLY_KEY" = ""
    "WEB_CLIENT_SECRET" = ""
    "ZOOM_OAUTH_APP_CLIENT_SECRET" = ""
    "ZOOM_OAUTH_APP_WEBHOOK_SECRET_TOKEN" = ""
    "ZOOM_TOKEN_ENCRYPTION_KEY" = ""
    "SECRET_12" = ""
    "SECRET_13" = ""
    "SECRET_14" = ""
    "SECRET_15" = ""
  }
}