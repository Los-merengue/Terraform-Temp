terraform {
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

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-provisioned"
  }
}
