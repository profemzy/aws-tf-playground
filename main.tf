# VPC Resource
resource "aws_vpc" "development-vpc" {
  cidr_block = var.dev-vpc-cidr
  tags = {
    Name: "development-vpc"
  }
}

# Subnet in VPC
resource "aws_subnet" "dev-subnet-1" {
  vpc_id     = aws_vpc.development-vpc.id
  cidr_block = var.dev-vpc-subnet-cidr
  availability_zone = "eu-west-3a"
  tags = {
    Name: "development-subnet-1"
  }
}

resource "aws_vpc" "some-vpc" {
  cidr_block = var.some-vpc-cidr
  tags = {
    Name: "some-vpc"
  }
}

# Subnet in VPC (133 and 214)
resource "aws_subnet" "some-subnet-1" {
  cidr_block = var.some-vpc-subnet-cidr
  vpc_id     = aws_vpc.some-vpc.id
  tags = {
    Name: "some-subnet-1"
  }
}
