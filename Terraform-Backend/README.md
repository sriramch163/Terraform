# Day 10 – Terraform Remote Backend (S3 + DynamoDB)

## What this does
- Stores Terraform state in S3 (remote backend)
- Uses DynamoDB for state locking
- Prevents multiple engineers from running Terraform at the same time

## Why this is important
- Centralized state storage
- Better collaboration
- Prevents state corruption

## Commands
terraform init
terraform plan
terraform apply
terraform destroy
