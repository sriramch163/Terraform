variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "VPC ID where SG will be created"
  type        = string
}

variable "my_ip" {
  description = "Your IP for SSH access"
  type        = string
}

variable "ingress_ports" {
  description = "List of ingress ports"
  type        = list(number)
}