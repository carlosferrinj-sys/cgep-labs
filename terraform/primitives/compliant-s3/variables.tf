variable "project_name" {
  type        = string
  description = "Identificador corto del proyecto."
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{2,20}$", var.project_name))
    error_message = "project_name debe tener de 3 a 21 caracteres alfanuméricos en minúscula o guiones, iniciando con letra."
  }
}

variable "environment" {
  type        = string
  description = "Entorno de despliegue (dev, staging, prod)."
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment debe ser uno de: dev, staging, prod."
  }
}

variable "bucket_suffix" {
  type        = string
  description = "Sufijo opcional para forzar el nombre del bucket."
  default     = ""
}