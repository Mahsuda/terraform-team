resource "aws_instance" "web" {
  ami             = "${var.ami}"
  instance_type   = "${var.instance_type}"
  key_name = "${aws_key_pair.deployer.key_name}"
   associate_public_ip_address = "${var.associate_public_ip_address}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  lifecycle{
    prevent_destroy = false
  }
   provisioner "remote-exec" {
    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "${var.user}"
      private_key = "${file(var.ssh_key_location)}"
      }
      inline = [
        "sudo yum install httpd -y",
        "sudo systemctl start httpd && sudo systemctl enable httpd",
        "sudo yum update -y",
        "sudo yum install epel-release -y",
        "sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y",
        "sudo yum-config-manager --enable remi-php70",
        "sudo yum install php php-gd php-mysql -y",
        "sudo yum install wget -y",
        "sudo wget https://wordpress.org/latest.tar.gz",
        "sudo tar -xf latest.tar.gz",
        "sudo cp -a wordpress/* /var/www/html",
        "sudo cp -a /var/www/html/wp-config-sample.php /var/www/html/wp-config.php",
        "sudo chown -R apache:apache /var/www/html",
        "sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config",
        "sudo setenforce 0",
        ]
      } 
  tags = {
    Name = "web-server"
    Name = "bastion-host"
    Dep = "IT"
    Group = "April"
  }
}
