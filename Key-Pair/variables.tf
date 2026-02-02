variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "day-06-terraform-key"
}
