terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource Block

resource "aws_instance" "My_first_ec2" {
  ami           = "0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = {
    Name = "First ec2"
  }
}