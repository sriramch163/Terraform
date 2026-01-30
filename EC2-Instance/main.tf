provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name        = "day-04-ec2-instance"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
