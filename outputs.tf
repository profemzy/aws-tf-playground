output "dev-vpc-id" {
  value = aws_vpc.eu-west3-dev-vpc.id
}

output "dev-vpc-subnet-id" {
  value = aws_subnet.eu-west3-dev-vpc-subnet-1
}
