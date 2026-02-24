variable "aws_region" {
  default = "us-east-1"
}

variable "instance_id" {
  description = "Existing EC2 instance ID"
  type        = string
}