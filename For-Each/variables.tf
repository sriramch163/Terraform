variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instances" {
  description = "Map of EC2 instances"
  type = map(object({
    instance_type = string
  }))
}
