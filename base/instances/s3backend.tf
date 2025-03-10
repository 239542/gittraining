terraform {
backend "s3" {
bucket = "shahalam.terraform25-bucket"
key = "shahalam.01-instance-state"
region = "us-east-1"
dynamodb_table = "shahalam_dynamodb"

}
}

