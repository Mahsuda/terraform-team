resource "aws_instance" "mysql" {
  ami             = "${data.aws_ami.centos7.id}"
  instance_type   = "${var.instance_type}"
   subnet_id = "${aws_subnet.public_subnets.id}"
  key_name = "${aws_key_pair.deployer.key_name}"
  security_groups = ["allow_ssh"]
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "bastion-host"
  }
}