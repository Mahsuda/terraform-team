terraform {
backend "s3" {
bucket = "vpc-creation-karimi2"
key = "default/us-east-1/state/dev/infrastructure.tfstate"
region = "us-east-1"
}
}
