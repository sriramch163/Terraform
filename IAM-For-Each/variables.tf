variable "aws_region" {
  default = "ap-south-1"
}

variable "iam_users" {
  description = "List of IAM usernames"
  type        = set(string)
}
