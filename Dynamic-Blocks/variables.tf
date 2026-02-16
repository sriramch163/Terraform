variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    description = string
    port        = number
    cidr        = list(string)
  }))
}
