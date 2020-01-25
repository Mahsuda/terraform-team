terraform {
backend "s3" {
bucket = "vpv-creation"
key = "default/us-east-2/state/dev/infrastructure.tfstate"
region = "us-east-2"
}
}
