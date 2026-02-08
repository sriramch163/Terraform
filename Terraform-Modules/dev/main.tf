provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "../modules/vpc"

  vpc_cidr          = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  vpc_name          = var.vpc_name
  az                = var.az
}
