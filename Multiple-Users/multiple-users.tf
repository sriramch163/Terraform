resource "aws_iam_user" "multiple_users" {
  for_each = var.users
  name     = each.value.name
}

# EC2 Full Access Policy for Development User
resource "aws_iam_policy" "ec2_full_access_policy" {
  name   = "ec2_full_access_policy"
  policy = file("${path.module}/ec2_full_access_policy.json")
}

# Administrator Access Policy for Admin User
resource "aws_iam_policy" "administrator_access_policy" {
  name   = "AdministratorAccessPolicy"
  policy = file("${path.module}/AdministratorAccessPolicy.json")
}

# CodePipeline Admin Access Policy for Test User
resource "aws_iam_policy" "codepipeline_admin_access_policy" {
  name   = "CodePipelineAdminAccessPolicy"
  policy = file("${path.module}/CodePipelineAccessPolicy.json")
}

# Policy attachments based on user type
resource "aws_iam_user_policy_attachment" "user_policy_attachments" {
  for_each = {
    for user_key, user_value in var.users : user_key => {
      user_name = user_value.name
      policy_arn = user_value.name == "developer-user" ? aws_iam_policy.ec2_full_access_policy.arn : (
        user_value.name == "admin-user" ? aws_iam_policy.administrator_access_policy.arn : 
        aws_iam_policy.codepipeline_admin_access_policy.arn
      )
    }
  }
  
  user       = aws_iam_user.multiple_users[each.key].name
  policy_arn = each.value.policy_arn
}