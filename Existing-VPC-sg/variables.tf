variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "my_ip" {
  description = "Your IP for access"
  type        = string
}

variable "ingress_ports" {
  description = "Ports to allow"
  type        = list(number)
}