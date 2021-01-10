variable "ovirt_url" {
    description = "oVirt API URL"
    default = "https://ovirt.mmagnani.lab/ovirt-engine/api"
}
variable "ovirt_username" {
    description = "oVirt Admin user"
    default     = "admin@internal"
}
variable "ovirt_password" {
    description = "oVirt Admin password"
    default     = "xxxxx"
}
variable "ansible_user" {
    description = "Ansible user"
    default     = "root"
}
# Basic
variable "vm_name_nomad" {
  description = " A unique name for the VM"
  default     = "nomad"
}
variable "vm_name_consul" {
  description = " A unique name for the VM"
  default     = "consul"
}
variable "vm_name_traefik" {
  description = " A unique name for the VM"
  default     = "traefik"
}
variable "vm_name_vault" {
  description = " A unique name for the VM"
  default     = "vault"
}
variable "cluster_id" {
  description = "The ID of cluster the VM belongs to"
  default     = "4749f2ae-ab54-11ea-9510-2c4d544b0bd1"
}
variable "vm_template_id" {
  description = "The ID of template the VM based on"
  default     = "55cd20a6-ec81-4208-8b65-1ed20a054b2b"
}
variable "vm_memory" {
  description = "The amount of memory of the VM (in metabytes)"
  default     = "4096"
}
variable "vm_cpu_cores" {
  description = "The amount of cores"
  default     = "4"
}
variable "vm_cpu_sockets" {
  description = "The amount of sockets"
  default     = "1"
}
variable "vm_cpu_threads" {
  description = " The amount of threads"
  default     = "1"
}
# VM initialization
variable "vm_authorized_ssh_key" {
  description = "The ssh key for the VM"
  default     = "ssh-rsa xxxxxx+Ju30tf9r+kakJeCU7DRIJTAWyT8N"
}
variable "vm_hostname_nomad" {
  description = "The hostname for the VM"
  default     = "nomad.mmagnani.lab"
}
variable "vm_hostname_consul" {
  description = "The hostname for the VM"
  default     = "consul.mmagnani.lab"
}
variable "vm_hostname_traefik" {
  description = "The hostname for the VM"
  default     = "traefik.mmagnani.lab"
}
variable "vm_hostname_vault" {
  description = "The hostname for the VM"
  default     = "vault.mmagnani.lab"
}

variable "vm_timezone" {
  description = "The timezone for the VM"
  default     = "America/Sao_Paulo"
}
variable "vm_user_name" {
  description = "The user name for the VM"
  default     = ""
}
variable "vm_custom_script" {
  description = "Set the custom script for the VM"
  default     = ""
}
variable "vm_dns_search" {
  description = "The dns server for the VM"
  default     = "mmagnani.lab"
}
variable "vm_dns_servers" {
  description = "The dns server for the VM"
  default     = "10.0.0.144 10.0.0.1 8.8.8.8"
}

# Initialization - Nic Configurations
variable "vm_nic_device" {
  description = "The vNIC to apply this configuration."
  default     = "ens3"
}
variable "vm_nic_boot_proto" {
  description = "The boot protocol for the vNIC configuration."
  default     = "static"
}
variable "vm_nic_ip_address_nomad" {
  description = "The IP address for the vNIC"
  default     = "10.0.0.181"
}
variable "vm_nic_ip_address_consul" {
  description = "The IP address for the vNIC"
  default     = "10.0.0.182"
}
variable "vm_nic_ip_address_traefik" {
  description = "The IP address for the vNIC"
  default     = "10.0.0.183"
}
variable "vm_nic_ip_address_vault" {
  description = "The IP address for the vNIC"
  default     = "10.0.0.184"
}
variable "vm_nic_gateway" {
  description = "The gateway for the vNIC"
  default     = "10.0.0.1"
}
variable "vm_nic_netmask" {
  description = "The netmask for the vNIC"
  default     = "255.255.255.0"
}
variable "vm_nic_on_boot" {
  description = "The flag to indicate whether the vNIC will be activated at VM booting"
  default     = "true"
}
variable "insecure_no_strict_host_key_checking" {
  default = false
}