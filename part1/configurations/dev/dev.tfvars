environment                         = "dev"
s3_region          					= "us-east-1"
s3_bucket 					    	= "mahsuda-backend"   #Will be used to set backend.tf
s3_folder_project 					= "default"          #Will be used to set backend.tf
s3_folder_region 					= "us-east-1"             #Will be used to set backend.tf
s3_folder_type 						= "state"                   #Will be used to set backend.tf
s3_tfstate_file 					= "infrastructure.tfstate" #Will be used to set backend.tf
project                             = "demo"
region                             	= "us-east-1"
associate_public_ip_address         = "true"
user                                = "centos"
ssh_key_location                    = "~/.ssh/id_rsa"
instance_type                        = "t2.micro"
#ami                                 = "ami-4bf3d731"






cidr            = "192.168.0.0/16"
azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public_subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private_subnets = ["192.168.11.0/24","192.168.12.0/24","192.168.13.0/24"]
