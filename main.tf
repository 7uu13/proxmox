module "rocky_user_data" {
  source       = "./modules/cloudinit_file"
  file_path    = "../cloudinit/cloudinit.yaml"
  file_name    = "cloudinit.yaml"
  datastore_id = "local"
  node_name    = "tuunikala"
}

module "rocky_vm" {
  source            = "./modules/vm/"
  name              = "rocky-1"
  id                = 1001
  disk_file_id      = "local:iso/RockyCloud.img"
  user_data_file_id = proxmox_virtual_environment_file.rocky_user_data.id

  depends_on = [
    module.rocky_user_data
  ]
}

output "vm_ip" {
  value = module.rocky_vm.vm_ip
}
