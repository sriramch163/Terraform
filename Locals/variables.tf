variable "aws_region" {
  default = "ap-south-1"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  default = "t2.micro"
}
