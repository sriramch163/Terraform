# Day 19 – Terraform Provisioners

## Provisioners used

1. file → copies script to EC2
2. remote-exec → executes script via SSH

## Flow

Terraform → SSH → EC2 → install nginx → deploy web page

## Verification

After apply:
Open browser:

http://<EC2_PUBLIC_IP>

You should see:
Terraform Provisioner Success

## Commands

terraform init
terraform apply
terraform destroy
