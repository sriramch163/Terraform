variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}
