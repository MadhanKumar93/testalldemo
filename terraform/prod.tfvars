project_id                    = "project-4-workndemos"
region                        = "us-central1"
zone                          = "us-central1-a"


network_name                  = "mk-vpc-prod"
subnet_name                   = "subnet-prod"
subnet_cidr_range             = "10.2.0.0/16"
firewall                      = "allow-http-ssh-prod"



vm_instance_names = {
  workload_1                 = "airbyte-prod"
  #workload_2                 = "db-debug-prod"
  #workload_3                 = "sftp-jumpbox-prod"
}
vm_machine_type               = "n1-standard-1"
vm_disk_size_gb               = 10

