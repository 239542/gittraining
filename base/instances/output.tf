output "aws_instance" {
  value = aws_instance.my_vm[*].public_ip
}

output "instance_type" {
 value = aws_instance.my_vm[*].instance_type
}

output "aws_ami"{
value = data.aws_ami.latest_amazon_linux.id
}


