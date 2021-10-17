variable "region" {
  type = string
  default = "Resource Region"
}

variable "environment" {
  type = string
  description = "Resource Environment"
}

variable "aws-access-key" {
  description = "AWS Access Key"
  type = string
}

variable "aws-secret-key" {
  description = "AWS-Secret-Key"
  type = string
}

variable "availability-zone" {
  default = "eu-west-3a"
  type = string
}

variable "vpc-cidr-blocks" {
  type = list(object({
    cidr_block = string,
    name = string
  }))
}
