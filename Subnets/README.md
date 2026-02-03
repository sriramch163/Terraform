# Day 08 – Public and Private Subnets in VPC

## What this creates
- 1 VPC (10.0.0.0/16)
- 1 Public Subnet (10.0.1.0/24)
- 1 Private Subnet (10.0.2.0/24)
- 1 Internet Gateway
- 1 Public Route Table

## Key concept learned
- Public subnet has internet access via IGW + route table  
- Private subnet has no direct internet access  
- Subnets can be placed in different AZs for high availability

## Commands
terraform init  
terraform plan  
terraform apply  
terraform destroy
