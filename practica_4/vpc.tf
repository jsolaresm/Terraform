resource "aws_vpc" "vpc_virginia" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_terraform"
    Creator = "jsolares"
    Enviroment = "DEV"
  }
  provider = aws.virginia
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_terraform_ohio"
    Creator = "jsolares"
    Enviroment = "DEV"
  }
  provider = aws.ohio
}