output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "ec2_name" {
  value = aws_instance.ec2.tags.Name
}
