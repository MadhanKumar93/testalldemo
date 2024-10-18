project_id                    = "project-4-workndemos"
region                        = "us-central1"
zone                          = "us-central1-a"


network_name                  = "mk-vpc-dev"
subnet_name                   = "subnet-dev"
subnet_cidr_range             = "10.4.0.0/16"
firewall_rule_name            = "allow-dev-http-ssh"
allowed_rules = [
  {
    protocol = "tcp"
    ports    = ["22", "80","8080","8081"]
  },
  {
    protocol = "icmp"
    ports    = []
  }
]
source_ranges = ["0.0.0.0/0"]



vm_instance_names = {
  workload_1                  = "mk-bastion-dev"
  workload_2                  = "mk-airbyte-dev"
  #workload_3                 = "db-debug-prod"
  #workload_4                 = "sftp-jumpbox-prod"
}
vm_machine_type = {
  workload_1 = "n1-standard-1"
  workload_2 = "n1-standard-2"  # Added specific type for workload_2
}

vm_machine_image = {
  workload_1 = "debian-cloud/debian-11"
  workload_2 = "debian-cloud/debian-12"  # Added specific image for workload_2
}

vm_disk_size_gb ={
  workload_1 = 20
  workload_2 = 20  # Added specific image for workload_2
}

