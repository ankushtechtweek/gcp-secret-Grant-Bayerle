project_name = "grant-bayerle"
region       =  "us-east1"

secrets = [
  {
    secret_name  = "OPENAI_API_KEY"
    secret_value = "my_secret_value_1"
    replication = ["us-east1"]
  },
  {
    secret_name  = "RECALL_API_KEY"
    secret_value = "my_secret_value_2"
    replication = ["us-east1"]
  },
  {
    secret_name  = "RECALL_SIGN_TOKEN"
    secret_value = "my_secret_value_3"
    replication = ["us-east1"]
  },
  {
    secret_name  = "SENDGRID_API_KEY"
    secret_value = "my_secret_value_4"
    replication = ["us-east1"]
  },
  {
    secret_name  = "TYPESENSE_SEARCH_ONLY_KEY"
    secret_value = "my_secret_value_5"
    replication = ["us-east1"]
  },
  {
    secret_name  = "TYPESENSE_WRITE_ONLY_KEY"
    secret_value = "my_secret_value_6"
    replication = ["us-east1"]
  },
  {
    secret_name  = "WEB_CLIENT_SECRET"
    secret_value = "my_secret_value_7"
    replication = ["us-east1"]
  },
  {
    secret_name  = "ZOOM_OAUTH_APP_CLIENT_SECRET"
    secret_value = "my_secret_value_8"
    replication = ["us-east1"]
  },
  {
    secret_name  = "ZOOM_OAUTH_APP_WEBHOOK_SECRET_TOKEN"
    secret_value = "my_secret_value_9"
    replication = ["us-east1"]
  },
  {
    secret_name  = "ZOOM_TOKEN_ENCRYPTION_KEY"
    secret_value = "my_secret_value_10"
    replication = ["us-east1"]
  }
]