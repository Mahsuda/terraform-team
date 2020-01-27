resource "aws_vpc_peering_connection" "foo" {
  #peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = "vpc-906f9ffb"
  vpc_id        = "vpc-2ada9250"
  auto_accept   = true

  tags = {
    Name = "VPC Peering between foo and bar"
  }
}