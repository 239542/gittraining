module "webserver" {
  source = "../instances"
 # instance_type = var.instance_type
   instance_type = "t2.micro"
  # Specify dependencies explicitly using depends_on if needed
  }

