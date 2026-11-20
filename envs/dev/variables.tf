variable "db_password" {
  description = "Master password for the RDS PostgreSQL database"
  type        = string
  sensitive   = true
}

variable "jwt_secret" {
  description = "JWT signing secret for the application"
  type        = string
  sensitive   = true
}

variable "github_org" {
  description = "GitHub username or organization that owns frontend and backend"
  type        = string
  default     = "zenpharma"
}

variable "enable_irsa" {
  description = "Whether to create the EKS OIDC provider for IRSA"
  type        = bool
  default     = false
}

variable "create_iam_resources" {
  description = "Whether to create IAM roles and OIDC providers"
  type        = bool
  default     = false
}

variable "create_github_oidc_provider" {
  description = "Whether Terraform creates the GitHub Actions OIDC provider"
  type        = bool
  default     = false
}

variable "github_oidc_provider_arn" {
  description = "Existing GitHub Actions OIDC provider ARN"
  type        = string
  default     = "arn:aws:iam::426197263065:oidc-provider/token.actions.githubusercontent.com"
}
