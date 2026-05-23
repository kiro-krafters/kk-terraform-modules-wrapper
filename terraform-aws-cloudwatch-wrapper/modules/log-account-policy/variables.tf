# Common variables.
variable "application" {
  description = "The name of the application associated with this resource."
  type        = string
}

variable "project_name" {
  description = "The name of the project associated with this resource."
  type        = string
  default     = ""
}

variable "company_prefix" {
  description = "A prefix representing the company, used for resource naming conventions."
  type        = string
}

variable "company" {
  description = "Name the company, used for resource naming conventions."
  type        = string
}

variable "environment" {
  description = "The deployment environment of the resource (e.g., dev, staging, prod)."
  type        = string
}

variable "region_suffix" {
  description = "A suffix representing the AWS region (e.g., 'use1' for US East 1, 'usw1' for US West 1)."
  type        = string
}

variable "region" {
  description = "Region of the resource."
  type        = string
  default     = ""
}

variable "custom_tags" {
  description = "Additional custom tags to apply to resources, supplementing the default tags."
  type        = map(string)
  default     = {}
}

variable "repository_url" {
  description = "The URL of the code repository."
  type        = string
  default     = null
}

# Resource specific variables.
variable "log_account_policy_configuration" {
  description = "The configuration related to the Cloudwatch log account policy."
  type        = any
  default     = {}
}