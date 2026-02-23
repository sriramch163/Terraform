variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_id" {
  description = "Existing EC2 instance ID"
  type        = string
}

variable "volume_size" {
  default = 8
}