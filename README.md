# Terraform Project: AWS ECR, ECS, and Networking Setup (Mumbai Region)

## Overview
This Terraform project sets up the infrastructure required to deploy a Python application on AWS using **ECS (Elastic Container Service)** and **ECR (Elastic Container Registry)** in the **Mumbai (ap-south-1) region**. The project includes networking configurations such as **VPC, Subnets, and Security Groups**.

## Project Structure
```
terraform-ecr-ecs-mumbai/
│── main.tf        # Main Terraform script
│── variables.tf   # Input variables
│── outputs.tf     # Output values
│── provider.tf    # AWS provider setup
│── ecs.tf         # ECS cluster and task definition
│── ecr.tf         # ECR repository
│── networking.tf  # VPC, Subnets, and Security Groups
│── README.md      # Documentation
```

## Prerequisites
Before running this Terraform project, ensure you have the following installed:
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with necessary permissions
- Configured AWS credentials using `aws configure` or AWS SSO

## Setup Instructions

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/ProjectTech4DevAI/infra.git
```

### 2️⃣ Initialize Terraform
```bash
terraform init
```

### 3️⃣ Plan the Deployment
```bash
terraform plan
```
This command previews the changes Terraform will apply.

### 4️⃣ Apply the Configuration
```bash
terraform apply
```
Type `yes` when prompted to apply the changes.

### 5️⃣ Verify Deployment
Once the deployment is complete, you can verify resources using AWS CLI:
```bash
aws ecs list-clusters
aws ecr describe-repositories
aws ec2 describe-vpcs
```

## Cleanup
To destroy all resources created by Terraform, run:
```bash
terraform destroy
```

## Notes
- This project deploys resources in the **Mumbai (`ap-south-1`) AWS region**.
- Modify `variables.tf` to customize configurations such as **VPC CIDR, ECS cluster name, ECR repository name, etc.**
- Ensure you have IAM permissions to create AWS resources before applying Terraform.

## License
This project is licensed under the **Tech4dev**.

## Contact
For any questions, feel free to reach out!


