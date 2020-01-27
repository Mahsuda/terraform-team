resource "aws_instance" "bastion" {
    ami = "${var.ami}"
    instance_type   = "${var.instance_type}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  key_name = "${aws_key_pair.deployer.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  vpc_id    = "${aws_vpc.main.id}"

  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "bastion-host"
    Dep = "IT"
    Group = "April"
  }
}