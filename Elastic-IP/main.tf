provider "aws" {
  region = var.aws_region
}

# Fetch existing EC2
data "aws_instance" "existing" {
  instance_id = var.instance_id
}

# Allocate Elastic IP
resource "aws_eip" "eip" {
  domain = "vpc"

  tags = {
    Name = "day-28-eip"
  }
}

# Associate EIP with EC2
resource "aws_eip_association" "eip_assoc" {
  instance_id   = var.instance_id
  allocation_id = aws_eip.eip.id
}