# Define required providers
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    nhncloud = {
      source  = "terraform.local/local/nhncloud"
      version = "1.0.0"
    }
  }
}

# Configure the nhncloud Provider
provider "nhncloud" {
  user_name = var.user_name
  tenant_id = var.tenant_id
  password  = var.password
  auth_url  = var.auth_url
  region    = var.region
}

variable "user_name" {
  type        = string
  description = "NHN Cloud ID"
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "API Endpoint Tenant ID"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "API Endpoint Password"
}

variable "auth_url" {
  type        = string
  description = "API Endpoint Identify URL"
}

variable "region" {
  type        = string
  description = "Service Region"
}
