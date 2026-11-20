variable "project" {
  description = "Project name"
  type        = string
}

variable "env" {
  description = "Environment name (dev, qa, prod)"
  type        = string
}

variable "oidc_provider_arn" {
  description = "ARN of the EKS OIDC provider"
  type        = string
}

variable "oidc_provider_url" {
  description = "URL of the EKS OIDC provider"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "github_org" {
  description = "GitHub organization or username that owns frontend and backend"
  type        = string
}

variable "create_github_oidc_provider" {
  description = "Whether Terraform creates the GitHub Actions OIDC provider"
  type        = bool
  default     = true
}

variable "github_oidc_provider_arn" {
  description = "Existing GitHub Actions OIDC provider ARN; required when creation is disabled"
  type        = string
  default     = ""

  validation {
    condition     = var.create_github_oidc_provider || var.github_oidc_provider_arn != ""
    error_message = "github_oidc_provider_arn must be set when create_github_oidc_provider is false."
  }
}
