# Day 13 – Terraform Workspaces (dev/qa/prod)

## What this shows
- How to use Terraform workspaces
- How to separate environments without duplicating code
- How to make resource names environment-aware

## Workspace commands

# List workspaces
terraform workspace list

# Create workspaces
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod

# Switch workspace
terraform workspace select dev
terraform workspace select qa
terraform workspace select prod

## Deployment flow

1) Initialize
terraform init

2) Create workspaces (only once)
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod

3) Deploy to each environment

terraform workspace select dev
terraform apply

terraform workspace select qa
terraform apply

terraform workspace select prod
terraform apply

4) Cleanup (per environment)
terraform workspace select dev
terraform destroy
