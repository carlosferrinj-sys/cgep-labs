variable "project_name" {
  type    = string
  default = "cgep-lab"
}

variable "lock_mode" {
  type        = string
  description = "GOVERNANCE para laboratorios; COMPLIANCE para evidencias reales."
  default     = "GOVERNANCE"
  validation {
    condition     = contains(["GOVERNANCE", "COMPLIANCE"], var.lock_mode)
    error_message = "lock_mode debe ser GOVERNANCE o COMPLIANCE."
  }
}

variable "retention_days" {
  type        = number
  description = "Retención por defecto para cada objeto."
  default     = 1
}
