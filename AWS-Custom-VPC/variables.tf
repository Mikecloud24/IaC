variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  
}

variable "cidr_vpc" {
  description = "vpc_cidr"
  type        = string
  
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string                                  # Adjust as necessary for your region
  
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  
}

variable "ingress_from_port" {
  description = "Starting port for ingress rules"
  type        = number
  
}

variable "ingress_to_port" {
  description = "Ending port for ingress rules"
  type        = number
  
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
  
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
  
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = null  # Optional, can be set to null if not using SSH keys
  
}

variable "volume_size" {
  description = "Size of the EBS volume in GB"
  type        = number
  default     = 15  # Default size for the root volume, can be adjusted as needed
}

variable "volume_type" {
  description = "Type of the EBS volume"
  type        = string
  default     = "gp2"  # Default volume type, can be adjusted as needed
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  
}