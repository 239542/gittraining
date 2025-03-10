data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "shahalam.terraform25-bucket"
key = "shahalam.01-network-state"
region = "us-east-1"
}
}

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]


  }
}

