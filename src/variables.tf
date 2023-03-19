variable "environment" {
  description = "Environment name"
  type        = string

  validation {
    condition     = can(regex("^(dev|qa|prod)$", var.environment))
    error_message = "The environment name must be either dev,qa or prod."
  }
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region name"
  type        = string
}

variable "machine_type" {
  description = "The machine type to use"
  type        = string
}
