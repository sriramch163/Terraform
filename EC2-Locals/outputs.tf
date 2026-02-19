output "ec2_name" {
  value = aws_instance.ec2.tags.Name
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}
