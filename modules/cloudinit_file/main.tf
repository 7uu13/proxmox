resource "proxmox_virtual_environment_file" "rocky_user_data" {
  content_type = "snippets"
  datastore_id = var.datastore_id
  node_name    = var.node_name

  source_raw {
    data = file("${path.module}/cloudinit/${var.file_path}")
    file_name = var.file_name
  }
}

