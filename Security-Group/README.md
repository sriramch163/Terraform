# Day 05 – EC2 Security Group using Terraform

## Objective
Create a Security Group and attach it to an EC2 instance using Terraform.

## Resources Created
- aws_security_group
- aws_instance

## Security Rules
- SSH (22): Allowed only from my IP
- HTTP (80): Allowed from anywhere
- Outbound: Allowed to all

## Terraform Commands Used
- terraform init
- terraform plan
- terraform apply
- terraform destroy

## Key Learnings
- How Security Groups work as virtual firewalls
- Attaching Security Groups to EC2 using Terraform
- Why restricting SSH access improves security
