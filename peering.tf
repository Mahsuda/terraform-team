module "single_account_multi_region" {
  source = "git::https://github.com/grem11n/terraform-aws-vpc-peering.git"

  providers = {
    aws.this = aws.us-east-1
    aws.peer = aws.us-east-2
  }

  this_vpc_id = vpc-2ada9250
  peer_vpc_id = vpc-906f9ffb

  auto_accept_peering = true

  tags = {
    Name        = "tf-single-account-multi-region"
    Environment = "Test"
  }
}