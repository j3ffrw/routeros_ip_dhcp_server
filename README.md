# Mikrotik RouterOS DCHP server OpenTofu module

## Features

1. **DHCP Server**. Create manage DHCP server
2. **DHCP Static IP Leases**. Create manage IP leases associated with this DHCP server.

## Usage

`routeros_ip_dhcp_server`: 

```hcl
module "routeros_ip_dhcp_server" {
  name            = "test-dhcp"
  interface       = "bridge"
  pool_name    = "test-pool"
  pool_ranges  = [
    "192.168.90.10-192.168.90.254"
    ]

  leases = {
    test-dhcp = {
      address     = "192.168.88.100"
      mac_address = "AA:BB:CC:DD:11:22"
    }
  }
}
```
