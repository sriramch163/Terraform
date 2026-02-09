# Day 12 – VPC + EC2 Modules Together

## What this shows
- Reusable VPC module
- Reusable EC2 module
- How one module consumes outputs from another

## Flow
VPC module → provides VPC ID & Subnet ID  
EC2 module → launches instance inside that subnet

## Commands
terraform init  
terraform plan  
terraform apply  
terraform destroy
