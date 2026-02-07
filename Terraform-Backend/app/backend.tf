terraform {
  backend "s3" {
    bucket         = "your-unique-terraform-state-bucket"
    key            = "day-10/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
