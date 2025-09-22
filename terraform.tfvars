# terraform.tfvars
 
aws_region          = "ap-south-1"
aws_profile         = "default"
 
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
 
ami_id              = "ami-01b6d88af12965bb6"
instance_type       = "t3.micro"