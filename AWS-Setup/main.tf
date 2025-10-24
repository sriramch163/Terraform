# The main 'terraform' block for global settings
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-bkt-1224"
    key     = "terraform/state.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
} # <-- END of the 'terraform' block

# ✅ CORRECT: Provider block is at the root level (outside the 'terraform' block)
provider "aws" {
  region = "us-east-1"
}

# ✅ CORRECT: Resource block is at the root level (outside the 'terraform' block)
resource "aws_s3_bucket" "demo" {
  bucket = "my-first-tf-bucket-2025"
}
