provider "aws" {
  region = var.aws_region
}

locals {
  # Environment
  env = var.environment

  # Dynamic naming
  name_prefix = "${var.project}-${local.env}"

  # Common tags
  common_tags = {
    Project     = var.project
    Environment = local.env
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${local.name_prefix}-bucket"

  tags = local.common_tags
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-ec2"
    }
  )
}
