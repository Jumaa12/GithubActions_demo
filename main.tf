terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource Block

resource "aws_ec2_instance" "my first ec2" {
  ami           = "0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = {
    Name = "First ec2"
  }
}