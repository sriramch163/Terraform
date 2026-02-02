# Day 06 – Create EC2 Key Pair using Terraform

## Objective
Generate an SSH key pair locally and register the public key with AWS.

## Resources Created
- tls_private_key
- aws_key_pair
- local_file

## What this does
- Creates a new RSA key pair
- Uploads the public key to AWS as an EC2 Key Pair
- Saves the private key locally as a .pem file

## Commands
- terraform init
- terraform plan
- terraform apply
- terraform destroy
