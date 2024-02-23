resource "aws_route_table" "tfp-pub" {
  vpc_id = aws_vpc.tfp.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tfp.id
 }
  tags = {
    Name = "Public-rt"
  }
}

resource "aws_route_table" "tfp-pri" {
  vpc_id = aws_vpc.tfp.id
 
  tags = {
    Name = "Private-rt"
  }
}

resource "aws_route_table_association" "tfp-pubr" {
  subnet_id = aws_subnet.tfp-pub.id
  route_table_id = aws_route_table.tfp-pub.id
}

resource "aws_route_table_association" "tfp-prir" {
  subnet_id = aws_subnet.tfp-pri.id
  route_table_id = aws_route_table.tfp-pri.id
}