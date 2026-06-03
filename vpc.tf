resource "aws_vpc" "VPC" {
  cidr_block = var.vpc_ip

  tags = {
    Name = "Main_Network"
  }
}