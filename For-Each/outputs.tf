output "instance_ids" {
  value = {
    for key, instance in aws_instance.ec2 : key => instance.id
  }
}

output "public_ips" {
  value = {
    for key, instance in aws_instance.ec2 : key => instance.public_ip
  }
}
