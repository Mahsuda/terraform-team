resource "aws_instance" "bastion" {
    ami = "${data.aws_ami.centos.id}"
    instance_type   = "${var.instance_type}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  key_name = "${aws_key_pair.deployer.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  subnet_id      = "${element(aws_subnet.public_subnets.*.id,count.index)}"

  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "bastion-host"
    Dep = "IT"
    Group = "April"
  }
}