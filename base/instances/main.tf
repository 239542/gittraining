resource "aws_instance" "my_vm" {
count = 1
ami = data.aws_ami.latest_amazon_linux.id
instance_type = var.instance_type
#depends_on = [data.terraform_remote_state.network_details]
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
key_name = data.terraform_remote_state.network_details.outputs.aws_key_pair
vpc_security_group_ids = [data.terraform_remote_state.network_details.outputs.aws_security_group]

/*
lifecycle {
    ignore_changes = [security_groups]  # Ignore security group changes
  }
*/

/*
lifecycle {
    create_before_destroy = true
#    prevent_destroy       = false
  }
*/

tags = {
Name = "shahalam.25-vm${count.index+1}"
}


/*
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/root/terraform-shah/base/networking/shahalamvm.key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y"
    ]
  }
*/

}


