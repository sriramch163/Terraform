# Day 15 – Terraform Count

## What this does
Creates multiple EC2 instances using the `count` meta-argument.

## Why use count?
- Avoid duplicate code
- Scale resources easily
- Index-based resource creation

## Example
If instance_count = 2 → Terraform creates:
- day-15-ec2-0
- day-15-ec2-1

## Commands
terraform init
terraform plan
terraform apply
terraform destroy
