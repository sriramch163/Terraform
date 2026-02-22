variable "aws_region" {
  default = "ap-south-1"
}

variable "az" {
  description = "Availability Zone for EBS"
  type        = string
}

variable "volume_size" {
  description = "Size of EBS in GB"
  type        = number
}