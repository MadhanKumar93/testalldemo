variable "project_id" {
  description = "The ID of the project in which resources will be created"
  type        = string
}

variable "region" {
  description = "The region in which resources will be created"
  type        = string
}

variable "zone" {
  description = "The zone in which resources will be created"
  type        = string
}

#Network variables

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet within the VPC network"
  type        = string
}

variable "subnet_cidr_range" {
  description = "The IP range for the subnet"
  type        = string
}

variable "firewall" {
  description = "The name of the firewall rule"
  type        = string
}


#VM variables

variable "vm_instance_names" {
  description = "The names of the VM instances in the development environment."
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


variable "vm_disk_size_gb" {
  description = "The disk size in GB for VM instances in the development environment."
  type        = map(number)
}

