output "multiple_user_names" {
  description = "Names of all created users"
  value       = { for k, v in aws_iam_user.multiple_users : k => v.name }
}

output "multiple_user_arns" {
  description = "ARNs of all created users"
  value       = { for k, v in aws_iam_user.multiple_users : k => v.arn }
}