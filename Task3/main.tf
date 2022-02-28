terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.3"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

#Ubuntu AMI image
resource "aws_instance" "server" {
  ami                    = "ami-055d15d9cfddf7bd3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Ubuntu.id]
  user_data              = file("./nginx_install.sh")


  tags = {
    Name = "Ubuntu_server"
  }
}

# Ubuntu server security group 
resource "aws_security_group" "Ubuntu" {
  name = "Ubuntu"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow ping from 1.2.3.4"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
# Linux 2 AMI image
resource "aws_instance" "Linux" {
  ami                    = "ami-055d15d9cfddf7bd3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Linux.id]


  tags = {
    Name = "Second Ubuntu server"
  }
}
resource "aws_security_group" "Linux" {
  name = "Linux"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.31.28.107/32"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["172.31.28.107/32"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.31.28.107/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.31.28.107/32"]
  }
}
