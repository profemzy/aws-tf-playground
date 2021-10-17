variable "region" {
  type = string
  default = "Resource Region"
}

variable "environment" {
  type = string
  description = "Resource Environment"
}

variable "availability-zone" {
  default = "eu-west-3a"
  type = string
}

variable "vpc-cidr-blocks" {
  type = list(object({
    cidr_block = string,
    description = string
  }))
}
