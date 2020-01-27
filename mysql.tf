resource "aws_db_instance" "rds" {
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  name              = "wordpress"
  username          = "wpuser"
  password          = "wpuser60641"
  parameter_group_name   = "default.mysql5.7"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  skip_final_snapshot    = "true"

}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_id      = "${element(aws_subnet.public_subnets.*.id,count.index)}"

  tags = {
    Name = "My DB subnet group"
  }
}