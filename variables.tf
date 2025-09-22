# variables.tf
 
variable "aws_region" {
  type        = string
  description = "AWS region"
}
 
variable "aws_profile" {
  type        = string
  description = "AWS CLI profile"
}
 
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}
 
variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR"
}
 
variable "private_subnet_cidr" {
  type        = string
  description = "Private subnet CIDR"
}
 
variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}
 
variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}