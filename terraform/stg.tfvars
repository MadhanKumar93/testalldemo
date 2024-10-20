project_id                    = "project-4-workndemos"
region                        = "us-central1"
zone                          = "us-central1-a"


network_name                  = "mk-vpc-stg"
subnet_name                   = "subnet-stg"
subnet_cidr_range             = "10.3.0.0/16"
firewall                      = "allow-http-ssh-stg"



vm_instance_names = {
  workload_1                  = "mk-bastion-stg"
  #workload_2                 = "airbyte-prod"
  #workload_3                 = "db-debug-prod"
  #workload_4                 = "sftp-jumpbox-prod"
}
vm_machine_type               = "n1-standard-1"
vm_disk_size_gb               = 10


