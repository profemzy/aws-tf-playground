variable "region" {
  default = "eu-west-3"
}

variable "aws-access-key" {
}

variable "aws-secret-key" {
}

variable "dev-vpc-cidr" {
  default = "10.0.0.0/16"
}

variable "dev-vpc-subnet-cidr" {
  default = "10.0.10.0/24"
}

variable "some-vpc-cidr" {
  default = "172.31.0.0/16"
}

variable "some-vpc-subnet-cidr" {
  default = "172.31.20.0/24"
}
