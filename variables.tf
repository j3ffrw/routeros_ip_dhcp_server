variable "interface" {
  type = string
}

variable "name" {
  type = string
}

variable "leases" {
  type = any
}

variable "pool_name" {
  type = string
}

variable "pool_ranges" {
  type = list(string)
}

