provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "dynamic_sg" {
  name   = "day-24-dynamic-sg"
  vpc_id = var.vpc_id

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
    Name      = "day-24-dynamic-sg"
    ManagedBy = "terraform"
  }
}