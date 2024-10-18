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


variable "firewall_rule" {
  description = "The name of the firewall rule"
  type        = string
}


variable "allowed_rules" {
  description = "List of allowed protocols and ports"
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "source_ranges" {
  description = "Source IP ranges that are allowed"
  type        = list(string)
}


