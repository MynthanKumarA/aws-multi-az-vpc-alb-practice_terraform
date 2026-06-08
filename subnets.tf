data "aws_availability_zones" "availability_zone" {
  state = "available"
}

resource "aws_subnet" "public_1az" {
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = var.public_1az_ip
  availability_zone       = data.aws_availability_zones.availability_zone.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_Subnet_1az"
  }
}

resource "aws_subnet" "public_2az" {
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = var.public_2az_ip
  availability_zone       = data.aws_availability_zones.availability_zone.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_Subnet_2az"
  }
}

resource "aws_subnet" "private_1az" {
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = var.private_1az_ip
  availability_zone       = data.aws_availability_zones.availability_zone.names[0]
  map_public_ip_on_launch = false

  tags = {
    Name = "Private_subnet_1az"
  }
}

resource "aws_subnet" "private_2az" {
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = var.private_2az_ip
  availability_zone       = data.aws_availability_zones.availability_zone.names[1]
  map_public_ip_on_launch = false

  tags = {
    Name = "Private_Subent.2az"
  }
}