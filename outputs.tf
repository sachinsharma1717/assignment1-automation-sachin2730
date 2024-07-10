output "vm_ids" {
  value = module.vmlinux-82730.vm_ids
}

output "resource_group_name" {
  value = module.rgroup-82730.resource_group_name
}

output "virtual_network_name" {
  value = module.network-82730.virtual_network_name
}

output "subnet_name" {
  value = module.network-82730.subnet_name
}

output "log_analytics_workspace_name" {
  value = module.common-82730.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common-82730.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common-82730.storage_account_name
}

output "vm_hostnames" {
  value = module.vmlinux-82730.vm_hostnames
}

output "vm_domain_names" {
  value = module.vmlinux-82730.vm_domain_names
}

output "vm_private_ips" {
  value = module.vmlinux-82730.vm_private_ips
}

output "vm_public_ips" {
  value = module.vmlinux-82730.vm_public_ips
}

output "windows_vm_hostname" {
  value     = module.vmwindows-82730.vm_hostname
  sensitive = true
}

output "windows_vm_domain_name" {
  value = module.vmwindows-82730.vm_domain_name
}

output "windows_vm_private_ip" {
  value = module.vmwindows-82730.vm_private_ip
}

output "windows_vm_public_ip" {
  value = module.vmwindows-82730.vm_public_ip
}

output "load_balancer_name" {
  value = module.loadbalancer-82730.load_balancer_name
}

output "database_name" {
  value = module.database-82730.database_name
}

output "windows_vm_id" {
  value = module.vmwindows-82730.vm_ids
}
