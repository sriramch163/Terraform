provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  for_each = var.instances

  ami           = var.ami_id
  instance_type = each.value.instance_type
  key_name      = var.key_name

  tags = {
    Name = each.key
  }
}
