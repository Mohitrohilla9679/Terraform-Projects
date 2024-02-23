provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "tfp" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "tfp-vpc"
  }
}
