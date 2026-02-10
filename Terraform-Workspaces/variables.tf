variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "base_bucket_name" {
  type        = string
  description = "Base name for environment buckets"
}
