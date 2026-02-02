provider "aws" {
  region = var.aws_region
}

resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = tls_private_key.ec2_key.public_key_openssh

  tags = {
    Name      = "day-06-key-pair"
    ManagedBy = "terraform"
  }
}

resource "local_file" "private_key" {
  content  = tls_private_key.ec2_key.private_key_pem
  filename = "${path.module}/${var.key_name}.pem"
  file_permission = "0400"
}
