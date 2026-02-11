provider "aws" {
  region = var.aws_region
}

locals {
  env = terraform.workspace
}

resource "aws_s3_bucket" "env_bucket" {
  bucket = "${var.base_bucket_name}-${local.env}"

  tags = {
    Environment = local.env
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.env_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
