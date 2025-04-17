## Proxmox provider setup

variable "virtual_environment_endpoint" {
  type        = string
  description = "URL for the Proxmox Virtual Environment"
}

variable "virtual_environment_username" {
  type        = string
  description = "The username and realm for the Proxmox Virtual Environment (example: root@pam)"
}

variable "virtual_environment_password" {
  type        = string
  sensitive   = true
  description = "The password for the Proxmox Virtual Environment"
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = false
}

