# modules/vm/main.tf
resource "proxmox_virtual_environment_vm" "vm" {
  name      = var.name
  node_name = var.node
  vm_id = var.id

  agent {
    enabled = true
  }

  cpu {
    cores = var.cpu_cores
    type  = var.cpu_type
  }

  memory {
    dedicated = var.memory_mb
  }

  disk {
    datastore_id = var.disk_datastore
    file_id      = var.disk_file_id
    interface    = "virtio0"
    size         = var.disk_size_gb
    iothread     = true
    discard      = "on"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_data_file_id = var.user_data_file_id
  }

  network_device {
    bridge = "vmbr0"
  }
}

