module "vpc_cross_region_peering" {
  source = "github.com/grem11n/terraform-aws-vpc-peering?ref=cross-region-peering"

  providers = {
    aws.this = aws.src
    aws.peer = aws.dst
  }

  peer_region             = "us-east-2"
  this_vpc_id             = "vpc-2ada9250"
  peer_vpc_id             = "vpc-906f9ffb"
  cross_region_peering    = true
  auto_accept_peering     = true

  tags = {
    Name        = "my-peering-connection"
    Environment = "prod"
  }
}