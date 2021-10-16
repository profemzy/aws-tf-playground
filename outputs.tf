output "dev-vpc-id" {
  value = aws_vpc.development-vpc.id
}

output "dev-vpc-subnet-id" {
  value = aws_subnet.dev-subnet-1.id
}
