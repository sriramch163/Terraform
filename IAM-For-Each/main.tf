provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "users" {
  for_each = var.iam_users

  name = each.value

  tags = {
    ManagedBy = "terraform"
    Day       = "21"
  }
}
