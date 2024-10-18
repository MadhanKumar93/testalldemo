variable "vm_instance_names" {
  description = "A map of instance names to create"
  type        = map(string)
}


variable "vm_machine_type" {
  description = "Map of VM instance names to their machine types."
  type        = map(string)
}

variable "vm_machine_image" {
  description = "Map of VM instance names to their machine images."
  type        = map(string)
}

variable "zone" {
  description = "The zone where the Compute Engine instance will be located"
}

variable "vm_disk_size_gb" {
  description = "The disk size for the boot disk of the Compute Engine instance in GB"
  type        = map(string)
}

variable "network_name" {
  description = "The name of the VPC network"
}

variable "subnet_name" {
  description = "The name of the subnet"
}

