output "iam_user_arns" {
  value = {
    for user, details in aws_iam_user.users :
    user => details.arn
  }
}
