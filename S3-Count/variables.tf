variable "aws_region" {
  default = "ap-south-1"
}

variable "bucket_prefix" {
  description = "Prefix for bucket name"
  type        = string
}

variable "bucket_count" {
  description = "Number of buckets to create"
  type        = number
}
