terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "ec2demo" {
    ami     = "ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
}