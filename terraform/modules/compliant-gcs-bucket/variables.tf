variable "gcp_project" {
  type        = string
  description = "GCP project ID."
}

variable "location" {
  type        = string
  default     = "us-central1"
}

variable "kms_location" {
  type        = string
  default     = "us-central1"
}

variable "project_label" {
  type        = string
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{2,20}$", var.project_label))
    error_message = "project_label must be 3-21 lowercase alphanumerics or hyphens."
  }
}

variable "environment" {
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment must be dev, staging, or prod."
  }
}

variable "retention_days" {
  type        = number
  validation {
    condition     = var.retention_days >= 1 && var.retention_days <= 3650
    error_message = "retention_days must be between 1 and 3650."
  }
  validation {
    condition     = var.environment != "prod" || var.retention_days >= 365
    error_message = "retention_days must be >= 365 when environment == \"prod\"."
  }
}

variable "bucket_name_suffix" {
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{3,30}$", var.bucket_name_suffix))
    error_message = "bucket_name_suffix must be 3-30 lowercase alphanumerics or hyphens."
  }
}

variable "labels" {
  type        = map(string)
  default     = {}
}