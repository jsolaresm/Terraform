resource "aws_vpc" "vpc_virginia" {
  instance_tenancy = "default"
    cidr_block = var.virginia_cidr
  tags = {

    Name       = "vpc_terraform"
    Creator    = "jsolares"
    Enviroment = "DEV"
  }
  provider = aws.virginia
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block       = var.ohio_cidr
  instance_tenancy = "default"

  tags = {
    Name       = "vpc_terraform_ohio"
    Creator    = "jsolares"
    Enviroment = "DEV"
  }
  provider = aws.ohio
}