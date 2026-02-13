# Day 16 – Terraform for_each

## What this does
Creates multiple EC2 instances with different names and instance types using for_each.

## Why for_each?
- Each resource gets a unique name
- No index-based confusion
- Safer than count when modifying resources

## Example created
dev   → t2.micro  
qa    → t2.micro  
prod  → t2.small  

## Commands
terraform init
terraform plan
terraform apply
terraform destroy
