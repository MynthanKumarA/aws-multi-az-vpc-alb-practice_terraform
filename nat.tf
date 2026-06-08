resource "aws_eip" "nat_ip" {
  domain = "vpc"

  tags = {
    Name = "NAT_eip"
  }
}

resource "aws_nat_gateway" "Nat_gateway" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public_1az.id

  tags = {
    Name = "Nat_gateway"
  }
}