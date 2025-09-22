# main.tf
 
module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}
 
module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}
 
module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id
  security_group_id  = module.security.web_sg_id
  user_data          = file("${path.module}/user-data.sh")
}