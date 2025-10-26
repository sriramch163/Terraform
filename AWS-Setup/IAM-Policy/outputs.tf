output "user_name" {
  description = "Name of the IAM user"
  value       = aws_iam_user.ec2_readonly_user.name
}

output "user_arn" {
  description = "ARN of the IAM user"
  value       = aws_iam_user.ec2_readonly_user.arn
}

output "policy_name" {
  description = "Name of the attached policy"
  value       = "AmazonEC2ReadOnlyAccess"
}