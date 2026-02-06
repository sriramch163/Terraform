# Day 09 – S3 Bucket with Versioning and Lifecycle

## What this creates
- S3 bucket
- Versioning enabled
- Lifecycle rules:
  - Move current objects to STANDARD_IA after 30 days
  - Move current objects to GLACIER after 90 days
  - Same transitions for non-current versions

## Why this matters
- Versioning protects against accidental deletes/overwrites
- Lifecycle policies reduce storage cost automatically

## Commands
terraform init
terraform plan
terraform apply
terraform destroy
