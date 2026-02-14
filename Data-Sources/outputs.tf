output "default_vpc_id" {
  value = data.aws_vpc.default.id
}

output "subnet_ids" {
  value = data.aws_subnets.default.ids
}

output "latest_ami" {
  value = data.aws_ami.amazon_linux.id
}

output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}
