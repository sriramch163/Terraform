terraform {
  backend "s3" {
    bucket         = "YOUR-STATE-BUCKET-NAME"
    key            = "workspaces/${terraform.workspace}/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
