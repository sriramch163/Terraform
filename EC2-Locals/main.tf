provider "aws" {
  region = var.aws_region
}

locals {
  name = "${var.project}-${var.environment}-ec2"

  common_tags = {
    Project     = var.project
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = merge(
    local.common_tags,
    {
      Name = local.name
    }
  )
}
