variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "az" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "my_ip" {
  type = string
}
