# AWS Multi-AZ VPC Infrastructure using Terraform

## Overview

This project provisions a custom AWS Virtual Private Cloud (VPC) using Terraform.

The infrastructure follows a common production-style network architecture with public and private subnets distributed across multiple Availability Zones.

## Architecture

The infrastructure includes:

* 1 Custom VPC
* 2 Public Subnets (Multi-AZ)
* 2 Private Subnets (Multi-AZ)
* 1 Internet Gateway
* 1 Elastic IP
* 1 NAT Gateway
* 1 Public Route Table
* 1 Private Route Table
* Route Table Associations

### Network Flow

Internet → Internet Gateway → Public Subnets

Private Subnets → NAT Gateway → Internet Gateway → Internet

Instances deployed in private subnets can access the internet for updates and package downloads without being directly accessible from the internet.

## Technologies Used

* AWS
* Terraform
* VPC
* Subnets
* Internet Gateway
* NAT Gateway
* Route Tables

## Project Structure

terraform-aws-vpc-project/

├── provider.tf

├── variables.tf

├── terraform.tfvars

├── vpc.tf

├── subnet.tf

├── igw.tf

├── nat.tf

├── routetable.tf

├── outputs.tf

├── .gitignore

└── README.md

## Deployment Steps

Initialize Terraform:

terraform init

Validate Configuration:

terraform validate

Review Execution Plan:

terraform plan

Deploy Infrastructure:

terraform apply

Destroy Infrastructure:

terraform destroy

## Learning Outcomes

Through this project I gained hands-on experience with:

* Infrastructure as Code (IaC)
* Terraform resource dependencies
* AWS networking concepts
* Public and Private Subnets
* Internet Gateway and NAT Gateway
* Route Tables and Route Table Associations
* Multi-AZ network design
* Git and GitHub version control

## Author

Mynthan A

Aspiring Cloud / DevOps Engineer

AWS | Terraform | Linux | Docker
