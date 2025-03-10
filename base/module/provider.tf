provider "vault" {
address = "http://127.0.0.1:8200"
}
data "vault_generic_secret" "aws_credentials" {
path = "secret/aws_credentials"
}
provider "aws" {
access_key = data.vault_generic_secret.aws_credentials.data["access_key"]
secret_key = data.vault_generic_secret.aws_credentials.data["secret_key"]
region = "us-east-1" # Replace with your desired AWS region
}
data "vault_generic_secret" "myapp_secret" {
path = "secret/aws_credentials"
}
