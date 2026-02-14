# Day 18 – Terraform Data Sources

## What this shows

Using existing AWS resources instead of creating new ones.

## Data sources used

- Default VPC
- Subnets in that VPC
- Latest Amazon Linux 2 AMI

## Why this is important

- Avoid hardcoding
- Always use latest AMI
- Reuse existing infrastructure

## Commands

terraform init
terraform plan
terraform apply
terraform destroy
