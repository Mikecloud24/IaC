variable "region" {
    description = "value for AWS region where resources will be created"
    default     = "us-east-1"

  
}

variable "subnet_name" {
    description = "Name of the subnet"
    default     = "my-subnet"
}

variable "instance_count" {
    description = "Number of instances to create"
    default     = 1

}

variable "cidr_vpc" {
    description = "CIDR block for the VPC"
    default     = ""
  
}

variable "vpc_name" {
    description = "Name of the VPC"
    default     = "my-vpc"
  
}


variable "cidr_subnet" {
    description = "CIDR block for the subnet"
    default     = ""
  
}

variable "azone" {
    description = "Availability Zone for the subnet"
    default     = "us-east-1a"
  
}

variable "sg_name" {
    description = "Name of the security group"
    default     = "my-sg"
  
}


variable "key" {
    description = "Name of the key pair"
    default     = ""
  
}

variable "instance_type" {
    description = "Type of the instance"
    default     = "t2.micro"
  
}

variable "instance_name" {
    description = "Name of the instance"
    default     = "My-Instance"
  
}
