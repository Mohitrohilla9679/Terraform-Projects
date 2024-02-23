resource "aws_internet_gateway" "tfp" {
    vpc_id = aws_vpc.tfp.id
    
  tags = {
    Name = "igw"
  }
}