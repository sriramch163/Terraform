# Day 07 – EC2 inside Public Subnet

## What this creates
- VPC
- Public Subnet
- Internet Gateway
- Route Table + Association
- Security Group
- EC2 instance inside the public subnet

## Key concept
The EC2 gets internet access because:
1) Subnet has a route to IGW  
2) EC2 is in that subnet  
3) Security group allows HTTP/SSH  

## Commands
terraform init  
terraform plan  
terraform apply  
terraform destroy
