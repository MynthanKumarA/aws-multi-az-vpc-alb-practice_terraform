resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.VPC.id
  
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.Nat_gateway.id
  }

  tags = {
    Name = "Private_rt"
  }
}


resource "aws_route_table_association" "public_as_1az" {
    route_table_id = aws_route_table.public_rt.id
    subnet_id = aws_subnet.public_1az.id
}

resource "aws_route_table_association" "private_as_1az" {
  route_table_id = aws_route_table.private_rt.id
  subnet_id = aws_subnet.private_1az.id
}

resource "aws_route_table_association" "public_as_2az" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id = aws_subnet.public_2az.id
}

resource "aws_route_table_association" "private_as_2az" {
  route_table_id = aws_route_table.private_rt.id
  subnet_id = aws_subnet.private_2az.id
}
