resource "aws_subnet" "main" {
  vpc_id     = "vpc-0c6ffd809eeed02fc"
  cidr_block = "10.0.0.224/28"

  tags = {
    Name = "shahalam"
  }
}
