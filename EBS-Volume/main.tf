provider "aws" {
  region = var.aws_region
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az
  size              = var.volume_size
  type              = "gp3"

  tags = {
    Name      = "day-26-ebs"
    ManagedBy = "terraform"
  }
}