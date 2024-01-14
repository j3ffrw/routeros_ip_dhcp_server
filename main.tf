resource "routeros_ip_dhcp_server" "dhcp_server" {
  address_pool  = routeros_ip_pool.pool.name
  interface     = var.interface
  name          = var.name
}

resource "routeros_ip_dhcp_server_lease" "dhcp_lease" {
  for_each    = var.leases  
  server      = routeros_ip_dhcp_server.dhcp_server.name
  address     = lookup(each.value, "address", null)
  mac_address = lookup(each.value, "mac_address", null)
}

resource "routeros_ip_pool" "pool" {
  name   = var.pool_name
  ranges = var.pool_ranges
}
