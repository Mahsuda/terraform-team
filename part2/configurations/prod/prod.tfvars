environment                         = "prod"
s3_region          					= "us-east-2"
s3_bucket 						    = "vpc-creation-karimi"   #Will be used to set backend.tf
s3_folder_project 					= "default"          #Will be used to set backend.tf
s3_folder_region 					= "us-east-2"             #Will be used to set backend.tf
s3_folder_type 						= "state"                   #Will be used to set backend.tf
s3_tfstate_file 					= "infrastructure.tfstate" #Will be used to set backend.tf




region          = "us-east-2"

cidr            = "192.168.0.0/16"

project         = "Default"
environment     = "Default"

azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public_subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private_subnets = ["192.168.11.0/24","192.168.12.0/24","192.168.13.0/24"]
