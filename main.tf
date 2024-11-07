terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "my_ec2" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"
  key_name      = "my-first-key-pair"

  tags = {
    Name        = "my_VM"
    Environment = "Testing"
    Owner       = "Dev"
  }
}
