variable "file_path" {
  type = string
  description = "Path to the cloud-init file (relative to the module)"
}

variable "file_name" {
  type = string
  description = "Filename to upload as"
}

variable "datastore_id" {
  type = string
}

variable "node_name" {
  type = string
}

