variable "region" {}
variable "cidr" {}
variable "project" {}
variable "environment" {}
variable "azs" {
    type = "list"
}
variable "public_subnets" {
    type = "list"
}
variable "private_subnets" {
    type = "list"
}
#variable "eip" {}
variable "s3_bucket" {}
variable "s3_folder_project" {}
variable "s3_folder_region" {}
variable "s3_folder_type" {}
variable "s3_tfstate_file" {}
variable "account_owner" {}
variable "associate_public_ip_address" {}
variable "user" {}
variable "ssh_key_location" {}
variable "nstance_type" {
  
}




