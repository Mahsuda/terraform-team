resource "aws_instance" "mysql" {
  ami             = "${data.aws_ami.centos.id}"
  instance_type   = "${var.instance_type}"
  key_name = "${aws_key_pair.deployer.key_name}"
   associate_public_ip_address = "${var.associate_public_ip_address}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  subnet_id      = "${element(aws_subnet.private_subnets.*.id,count.index)}"
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "web-server"
    Name = "bastion-host"
    Dep = "IT"
    Group = "April"
  }
}
