resource "aws_instance" "bastion" {
    ami = "${var.ami}"
    instance_type   = "${var.instance_type}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  key_name = "${aws_key_pair.deployer.key_name}"
  security_groups = ["allow_ssh"]
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "bastion-host"
  }
}