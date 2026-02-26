# Terraform Learning Repository

A comprehensive collection of Terraform configurations demonstrating AWS infrastructure as code concepts from basics to advanced topics.

## About Terraform

Terraform is an open-source Infrastructure as Code (IaC) tool by HashiCorp that allows you to define and provision infrastructure using declarative configuration files. It supports multiple cloud providers and enables version control, automation, and reproducibility of infrastructure deployments.

### Key Benefits
- **Declarative Syntax**: Define what you want, not how to create it
- **State Management**: Tracks infrastructure state for consistent deployments
- **Provider Ecosystem**: Supports AWS, Azure, GCP, and 100+ providers
- **Reusability**: Create modular, reusable infrastructure components
- **Plan Before Apply**: Preview changes before execution

## Repository Structure

### AWS Setup
- **AWS-Setup**: Initial AWS configuration and IAM setup
- **IAM-Policy**: IAM user creation with custom policies

### Compute Resources
- **EC2-Instance**: Basic EC2 instance provisioning
- **EC2-In-VPC**: EC2 instances within custom VPC
- **EC2-Userdata**: EC2 with user data scripts for initialization
- **EC2-Locals**: Using local values for EC2 configuration
- **Key-Pair**: SSH key pair management
- **Latest-AMI**: Dynamically fetch latest AMI using data sources

### Storage
- **EBS-Volume**: Create and manage EBS volumes
- **EBS-Attach**: Attach EBS volumes to EC2 instances
- **S3**: Basic S3 bucket creation
- **S3-Count**: Multiple S3 buckets using count
- **S3-Versioning-Encryption**: S3 with versioning and encryption enabled

### Networking
- **VPC**: Virtual Private Cloud creation
- **Subnets**: Subnet configuration within VPC
- **Security-Group**: Security group rules and configuration
- **Existing-VPC-sg**: Security groups in existing VPC
- **Dynamic-SG**: Dynamic security group rules
- **IGW-Route-Table**: Internet Gateway and route table setup
- **Elastic-IP**: Elastic IP allocation and association
- **EC2-In-VPC**: Complete VPC with EC2 deployment

### Advanced Concepts
- **Variables**: Input variables and tfvars files
- **Locals**: Local values for computed expressions
- **Data-Sources**: Query existing AWS resources
- **Dynamic-Blocks**: Dynamic nested blocks for complex configurations
- **Count**: Create multiple similar resources
- **For-Each**: Iterate over maps and sets
- **IAM-For-Each**: IAM users with for_each
- **Provisioners**: Execute scripts on resources

### State Management
- **Terraform-Backend**: Remote state storage in S3
- **Backend-Workspaces**: Backend configuration with workspaces
- **Terraform-Workspaces**: Manage multiple environments

### Modules
- **Terraform-Modules**: Reusable VPC module
- **VPC-EC2-Modules**: Combined VPC and EC2 modules

### IAM & Users
- **Multiple-Users**: Create multiple IAM users with different policies

## Common Commands

```bash
# Initialize Terraform working directory
terraform init

# Validate configuration files
terraform validate

# Format configuration files
terraform fmt

# Preview changes
terraform plan

# Apply changes
terraform apply

# Apply without confirmation prompt
terraform apply -auto-approve

# Destroy infrastructure
terraform destroy

# Show current state
terraform show

# List resources in state
terraform state list

# Refresh state
terraform refresh
```

## Prerequisites

- Terraform installed (v1.0+)
- AWS CLI configured with credentials
- AWS account with appropriate permissions
- Basic understanding of AWS services

## Getting Started

1. Navigate to any project directory
2. Review the README.md for specific instructions
3. Update terraform.tfvars with your values
4. Run `terraform init` to initialize
5. Run `terraform plan` to preview changes
6. Run `terraform apply` to create resources
7. Run `terraform destroy` to clean up

## Best Practices

- Always run `terraform plan` before `apply`
- Use variables for reusable values
- Store sensitive data in variables, not in code
- Use remote state for team collaboration
- Tag all resources for better management
- Use modules for reusable components
- Version control your Terraform code
- Never commit .tfstate files or credentials

## Project Organization

Each directory contains:
- `main.tf`: Primary resource definitions
- `variables.tf`: Input variable declarations
- `outputs.tf`: Output value definitions
- `terraform.tfvars`: Variable values
- `README.md`: Project-specific documentation

## Notes

- Most examples use AWS free tier eligible resources
- Always destroy resources after testing to avoid charges
- Review AWS pricing before deploying resources
- Some examples require existing AWS resources
