# Dev VPC Resource
resource "aws_vpc" "eu-west3-dev-vpc" {
  cidr_block = var.vpc-cidr-blocks[0].cidr_block
  tags = {
    Name:   "${var.region}-${var.environment}-vpc"
    Environment: var.environment
  }
}

# Subnet in Dev VPC 214
resource "aws_subnet" "eu-west3-dev-vpc-subnet-1" {
  vpc_id     = aws_vpc.eu-west3-dev-vpc.id
  cidr_block = var.vpc-cidr-blocks[1].cidr_block
  availability_zone = var.availability-zone
  tags = {
    Name:  "${var.region}-${var.environment}-vpc-subnet-1"
    Environment: var.environment
  }
}
