# Day 20 – Terraform Dynamic Blocks

## What this does

Creates a security group with multiple ingress rules using a dynamic block.

## Why dynamic blocks?

- Avoid repeating ingress blocks
- Module-friendly
- Fully input-driven

## Input example

SSH → 22  
HTTP → 80  
HTTPS → 443  

## Commands

terraform init  
terraform plan  
terraform apply  
terraform destroy
