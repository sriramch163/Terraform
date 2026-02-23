# Day 27 – Attach EBS to EC2

## What this does

- Fetches an existing EC2 using data source
- Creates EBS in the same AZ
- Attaches the volume to the EC2

## Key concept

EBS and EC2 must be in the same Availability Zone.

## Commands

terraform init
terraform apply
terraform destroy