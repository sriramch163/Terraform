provider "aws" {
  region = var.aws_region
}

# Fetch existing VPC
data "aws_vpc" "existing" {
  id = var.vpc_id
}

# Create Security Group in existing VPC
resource "aws_security_group" "sg" {
  name   = "day-31-sg"
  vpc_id = data.aws_vpc.existing.id

  dynamic "ingress" {
    for_each = var.ingress_ports

    content {
      description = "Allow port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.my_ip]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "day-31-existing-vpc-sg"
    ManagedBy = "terraform"
  }
}