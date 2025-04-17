variable "name" {   
  description = "Name of the machine"
  type = string
}

variable "node" {   
  description = "Name of the node"
  type = string
  default = "tuunikala"
}

variable "id" {   
  description = "ID for the vm"
  type = number
}

variable "cpu_cores" {   
  description = "Number of CPU Cores"
  type = number
  default = 2
}

variable "cpu_type" {   
  description = "CPU type"
  type = string
  default = "x86-64-v2-AES"
}
variable "memory_mb" {
  description = "RAM in MB"
  type        = number
  default     = 2048
}

variable "disk_datastore" {
  description = "Datastore for VM disk"
  type        = string
  default = "local-lvm"
}

variable "disk_file_id" {
  description = "Disk image file to use"
  type        = string
}

variable "disk_size_gb" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

variable "user_data_file_id" {
  description = "Cloud-init user-data file ID"
  type        = string
}
