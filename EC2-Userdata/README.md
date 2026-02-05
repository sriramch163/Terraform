# Day 08 – EC2 with user_data (Nginx)

## What this creates
- VPC + Public Subnet
- Internet Gateway + Route Table
- Security Group
- EC2 with automatic Nginx installation

## How to verify
1) Run: terraform apply  
2) Copy the public IP from output  
3) Open in browser: http://<PUBLIC_IP>

You should see: **“Terraform Day 08 - Nginx Running”**

## Commands
terraform init  
terraform plan  
terraform apply  
terraform destroy
