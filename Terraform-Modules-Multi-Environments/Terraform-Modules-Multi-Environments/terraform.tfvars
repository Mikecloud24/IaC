region = "us-east-1"

# Dev Environment
dev_cidr_vpc     = "10.0.0.0/16"
dev_cidr_subnet  = "10.0.1.0/24"
dev_azone        = "us-east-1a"
dev_instance_type = "t2.micro"
dev_key_name     = "devops-key"
instance_count_dev = 2

# Prod Environment
prod_cidr_vpc     = "10.1.0.0/16"
prod_cidr_subnet  = "10.1.1.0/24"
prod_azone        = "us-east-1b"
prod_instance_type = "t2.micro"
prod_key_name     = "prod-key"
instance_count_prod = 1

