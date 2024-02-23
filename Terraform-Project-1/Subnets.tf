resource "aws_subnet" "tfp-pub" {
  vpc_id = aws_vpc.tfp.id
  cidr_block = "192.168.0.0/25"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public"
  }
}

resource "aws_subnet" "tfp-pri" {
  vpc_id = aws_vpc.tfp.id
  cidr_block = "192.168.0.128/25"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private"
  }
}