output "ip_dhcp_server_id" {
  value = routeros_ip_dhcp_server.dhcp_server.id
}

output "ip_dhcp_server_dynamic" {
  value = routeros_ip_dhcp_server.dhcp_server.dynamic
}

output "ip_dhcp_server_invalid" {
  value = routeros_ip_dhcp_server.dhcp_server.invalid
}

output "ip_pool_id" {
  value = routeros_ip_pool.pool.id
}

output "routeros_ip_dhcp_server_lease" {
  value = routeros_ip_dhcp_server_lease.dhcp_lease[*]
}
