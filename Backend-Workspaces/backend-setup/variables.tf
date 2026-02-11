variable "aws_region" {
  default = "ap-south-1"
}

variable "state_bucket" {
  type        = string
  description = "Globally unique S3 bucket for Terraform state"
}

variable "lock_table" {
  type        = string
  default     = "terraform-state-lock"
}
