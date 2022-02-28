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
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
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
}
resource "aws_instance" "amazon-linux" {
  ami                    = "ami-02a45d709a415958a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.SecurityGroup.id]
  subnet_id              = aws_subnet.private-subnet.id
  tags = {
    Name = "Amazon Linux"
  }
}
