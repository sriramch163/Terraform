provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "day-15-ec2-${count.index}"
  }
}
