# ZenPharma – AWS DevOps Infrastructure

**Infrastructure as Code | AWS | Terraform | Kubernetes | CI/CD**

A cloud infrastructure project demonstrating how to design, provision, and manage a scalable, secure, and maintainable infrastructure for the ZenPharma application using modern DevOps and Platform Engineering practices.

## Project Overview

ZenPharma is a DevOps portfolio project focused on automating cloud infrastructure using Terraform and AWS.

The project follows Infrastructure as Code (IaC) principles to organize infrastructure into reusable Terraform modules and environment-specific configurations.

## Architecture

The infrastructure is designed around the following AWS services:

- **Amazon VPC** – Network isolation and subnet architecture.
- **Amazon EKS** – Managed Kubernetes infrastructure.
- **Amazon ECR** – Container image registry.
- **Amazon RDS** – Relational database infrastructure.
- **AWS IAM** – Identity and access management.
- **AWS Secrets Manager** – Secure application secrets.
- **Amazon S3** – Terraform remote state storage.
- **AWS CloudWatch** – Monitoring and logging.

## Technology Stack

| Technology     | Purpose                 |
| -------------- | ----------------------- |
| Terraform      | Infrastructure as Code  |
| AWS            | Cloud infrastructure    |
| Kubernetes     | Container orchestration |
| Docker         | Containerization        |
| Amazon EKS     | Managed Kubernetes      |
| Amazon ECR     | Container registry      |
| GitHub Actions | CI/CD automation        |
| GitHub OIDC    | AWS authentication      |
| Linux          | Operating system        |
| Bash           | Automation scripting    |
| Git & GitHub   | Version control         |

## Repository Structure

```text
infra/
├── .github/
│   └── workflows/
├── envs/
│   └── dev/
├── modules/
│   ├── vpc/
│   ├── iam/
│   ├── eks/
│   ├── ecr/
│   ├── rds/
│   └── secrets-manager/
├── images/
└── README.md
```

## Infrastructure as Code

The Terraform configuration is organized into reusable modules.

Each module is responsible for a specific infrastructure component, making the project easier to maintain, extend, and reuse.

## CI/CD

GitHub Actions is used to develop an automated Terraform workflow.

The intended pipeline includes:

1. Terraform initialization
2. Terraform formatting validation
3. Terraform validation
4. Terraform planning
5. Infrastructure deployment after approval

## Security Practices

- AWS IAM least-privilege principles
- GitHub Actions authentication using OIDC
- Secure handling of application secrets
- Environment-specific Terraform configurations
- Remote Terraform state management

## Project Goals

- Develop practical AWS Cloud and DevOps engineering skills.
- Build reusable Terraform modules.
- Understand Kubernetes and EKS infrastructure.
- Automate infrastructure workflows with GitHub Actions.
- Apply DevSecOps and cloud security practices.

## Current Status

This repository is an evolving learning and portfolio project. Infrastructure components and automation are developed increment

## Architecture

## Architecture

![ZenPharma AWS DevOps Architecture](imagesaws_architecture.png)
