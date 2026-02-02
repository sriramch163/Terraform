output "key_pair_name" {
  value = aws_key_pair.deployer.key_name
}

output "private_key_file" {
  value = "${path.module}/${var.key_name}.pem"
}
