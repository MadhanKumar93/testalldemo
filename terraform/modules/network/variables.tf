variable "network_name" {
  description = "The name of the VPC network"
}

variable "subnet_name" {
  description = "The name of the subnet"
}

variable "region" {
  description = "The region for resources"
}

variable "subnet_cidr_range" {
  description = "CIDR range for the subnet"
  type        = string
}



