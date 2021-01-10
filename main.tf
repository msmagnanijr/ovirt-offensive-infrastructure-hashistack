provider "ovirt" {
  url = var.ovirt_url
  username  = var.ovirt_username
  password  = var.ovirt_password
}

terraform {
  backend "local" {
    path = "ovirt_terraform.tfstate"
  }
}

resource "ovirt_vm" "vm_consul" {

  connection {
    host = var.vm_nic_ip_address_consul
    user = var.ansible_user
  }

  provisioner "ansible" {
      plays {
        playbook {
          file_path = "${path.module}/ansible/consul.yml"
          roles_path = [
              "${path.module}/ansible/roles"
          ]
        }
        hosts = [var.vm_nic_ip_address_consul]
      }

      ansible_ssh_settings {
        insecure_no_strict_host_key_checking = var.insecure_no_strict_host_key_checking
      }
    }

    name                 = var.vm_name_consul
    cluster_id           = var.cluster_id
    memory               = var.vm_memory
    template_id          = var.vm_template_id
    cores                = var.vm_cpu_cores

    initialization {
      authorized_ssh_key = var.vm_authorized_ssh_key
      host_name          = var.vm_hostname_consul
      timezone           = var.vm_timezone
      dns_search         = var.vm_dns_search
      dns_servers        = var.vm_dns_servers

      nic_configuration {
        label              = var.vm_nic_device
        boot_proto         = var.vm_nic_boot_proto
        address            = var.vm_nic_ip_address_consul
        gateway            = var.vm_nic_gateway
        netmask            = var.vm_nic_netmask
        on_boot            = var.vm_nic_on_boot
      }
    }
}

resource "ovirt_vm" "vm_nomad" {

  connection {
    host = var.vm_nic_ip_address_nomad
    user = var.ansible_user
  }

  provisioner "ansible" {
      plays {
        playbook {
          file_path = "${path.module}/ansible/nomad.yml"
          roles_path = [
              "${path.module}/ansible/roles"
          ]
        }
        hosts = [var.vm_nic_ip_address_nomad]
      }

      ansible_ssh_settings {
        insecure_no_strict_host_key_checking = var.insecure_no_strict_host_key_checking
      }
    }

    name                 = var.vm_name_nomad
    cluster_id           = var.cluster_id
    memory               = var.vm_memory
    template_id          = var.vm_template_id
    cores                = var.vm_cpu_cores

    initialization {
      authorized_ssh_key = var.vm_authorized_ssh_key
      host_name          = var.vm_hostname_nomad
      timezone           = var.vm_timezone
      dns_search         = var.vm_dns_search
      dns_servers        = var.vm_dns_servers

      nic_configuration {
        label              = var.vm_nic_device
        boot_proto         = var.vm_nic_boot_proto
        address            = var.vm_nic_ip_address_nomad
        gateway            = var.vm_nic_gateway
        netmask            = var.vm_nic_netmask
        on_boot            = var.vm_nic_on_boot
      }
    }
}

resource "ovirt_vm" "vm_traefik" {

  connection {
    host = var.vm_nic_ip_address_traefik
    user = var.ansible_user
  }

  provisioner "ansible" {
      plays {
        playbook {
          file_path = "${path.module}/ansible/traefik.yml"
          roles_path = [
              "${path.module}/ansible/roles"
          ]
        }
        hosts = [var.vm_nic_ip_address_traefik]
      }

      ansible_ssh_settings {
        insecure_no_strict_host_key_checking = var.insecure_no_strict_host_key_checking
      }
    }

    name                 = var.vm_name_traefik
    cluster_id           = var.cluster_id
    memory               = var.vm_memory
    template_id          = var.vm_template_id
    cores                = var.vm_cpu_cores

    initialization {
      authorized_ssh_key = var.vm_authorized_ssh_key
      host_name          = var.vm_hostname_traefik
      timezone           = var.vm_timezone
      dns_search         = var.vm_dns_search
      dns_servers        = var.vm_dns_servers

      nic_configuration {
        label              = var.vm_nic_device
        boot_proto         = var.vm_nic_boot_proto
        address            = var.vm_nic_ip_address_traefik
        gateway            = var.vm_nic_gateway
        netmask            = var.vm_nic_netmask
        on_boot            = var.vm_nic_on_boot
      }
    }
}


resource "ovirt_vm" "vm_vault" {

  connection {
    host = var.vm_nic_ip_address_vault
    user = var.ansible_user
  }

  provisioner "ansible" {
      plays {
        playbook {
          file_path = "${path.module}/ansible/vault.yml"
          roles_path = [
              "${path.module}/ansible/roles"
          ]
        }
        hosts = [var.vm_nic_ip_address_vault]
      }

      ansible_ssh_settings {
        insecure_no_strict_host_key_checking = var.insecure_no_strict_host_key_checking
      }
    }

    name                 = var.vm_name_vault
    cluster_id           = var.cluster_id
    memory               = var.vm_memory
    template_id          = var.vm_template_id
    cores                = var.vm_cpu_cores

    initialization {
      authorized_ssh_key = var.vm_authorized_ssh_key
      host_name          = var.vm_hostname_vault
      timezone           = var.vm_timezone
      dns_search         = var.vm_dns_search
      dns_servers        = var.vm_dns_servers

      nic_configuration {
        label              = var.vm_nic_device
        boot_proto         = var.vm_nic_boot_proto
        address            = var.vm_nic_ip_address_vault
        gateway            = var.vm_nic_gateway
        netmask            = var.vm_nic_netmask
        on_boot            = var.vm_nic_on_boot
      }
    }
}