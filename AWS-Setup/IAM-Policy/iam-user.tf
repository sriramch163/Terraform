resource "aws_iam_user" "ec2_readonly_user" {
  name = "ec2-readonly-user"
}

resource "aws_iam_policy" "ec2_readonly_policy" {
  name   = "ec2-readonly-policy"
  policy = file("${path.module}/ec2-readonly-policy.json")
}

resource "aws_iam_user_policy_attachment" "ec2_readonly_policy" {
  user       = aws_iam_user.ec2_readonly_user.name
  policy_arn = aws_iam_policy.ec2_readonly_policy.arn
}