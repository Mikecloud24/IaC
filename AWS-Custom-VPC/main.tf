provider "aws" {
  region = var.region
  
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_vpc

    tags = {
        Name = var.vpc_name
    }
  
}

resource "aws_subnet" "my_subnet" {
  vpc_id                      = aws_vpc.my_vpc.id
  cidr_block                  = var.subnet_cidr_block
  map_public_ip_on_launch     = true
  availability_zone           = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
  
}

resource "aws_security_group" "my_sg" {
  name        = var.sg_name
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags = {
        Name = var.sg_name
    }

}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = var.igw_name
  }
  
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
    tags = {
        Name = var.route_table_name
    }
}

resource "aws_route_table_association" "my_route_table_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}

resource "aws_instance" "my_instance" {
  ami                = var.ami_id
  key_name           = var.key_name
  instance_type      = var.instance_type
  subnet_id          = aws_subnet.my_subnet.id
  security_groups    = [aws_security_group.my_sg.id]

  tags = {
    Name = var.instance_name
  }
root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              EOF

  lifecycle {
    create_before_destroy = true
   }
    depends_on = [aws_internet_gateway.my_igw, aws_route_table_association.my_route_table_association]
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name = var.s3_bucket_name
  }
  
}