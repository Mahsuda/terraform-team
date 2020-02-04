terraform {
backend "s3" {
bucket = "mahsuda-backend"
key = "default/us-east-1/state/dev/infrastructure.tfstate"
region = "us-east-1"
}
}
