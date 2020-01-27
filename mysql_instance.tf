resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
   subnet_id = "${aws_subnet.public_subnets.id}"
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"]
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "bastion-host"
  }
}

data "aws_ami" "centos" {
    filter {
    name = "root-device-type" 
    values = ["ebs"] 
}
most_recent = true
owners = var.account_owner
}