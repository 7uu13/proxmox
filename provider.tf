terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.75.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  username = var.virtual_environment_username
  password = var.virtual_environment_password
  insecure = var.pm_tls_insecure
}

