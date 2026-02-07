provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "terraform-backend-demo-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}
