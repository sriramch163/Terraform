provider "aws" {
  region = var.aws_region
}

locals {
  common_tags = {
    ManagedBy = "terraform"
    Project   = "daily-practice"
    Day       = "22"
  }
}

resource "aws_s3_bucket" "buckets" {
  count  = var.bucket_count
  bucket = "${var.bucket_prefix}-${count.index}"

  tags = local.common_tags
}
