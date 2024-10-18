variable "firewall_rule_name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "network" {
  description = "VPC network to which the firewall applies"
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
