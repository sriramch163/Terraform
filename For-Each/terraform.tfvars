ami_id   = "ami-0abcdef1234567890"
key_name = "your-key-name"

instances = {
  dev = {
    instance_type = "t2.micro"
  }
  qa = {
    instance_type = "t2.micro"
  }
  prod = {
    instance_type = "t2.small"
  }
}
