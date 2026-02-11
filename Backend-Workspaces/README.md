# Day 14 – Remote Backend + Workspaces Together

## What this setup provides
- Centralized remote state in S3
- State locking with DynamoDB
- Separate state per workspace (dev/qa/prod)

## Why this is powerful
- Safe team collaboration
- No state conflicts
- Clean separation of environments

## Steps

1) Initialize
terraform init

2) Create workspaces (only once)
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod

3) Deploy per environment

terraform workspace select dev
terraform apply

terraform workspace select qa
terraform apply

terraform workspace select prod
terraform apply

4) Cleanup (per environment)
terraform workspace select dev
terraform destroy
