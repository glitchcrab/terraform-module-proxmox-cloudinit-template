variable "conn_type" {
  type = string
}

variable "conn_user" {
  type = string
}

variable "conn_target" {
  type = string
}

variable "snippet_dir" {
  type = string
}

variable "snippet_file_base" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "instance_domain" {
  type = string
}

variable "primary_network" {
  default = {
    gateway = "192.168.1.1"
    ip      = "192.16.1.2"
    macaddr = "00:00:00:00:00:00"
    netmask = 24
  }
  type = map(any)
}

variable "extra_networks" {
  type = list(object({
    ips     = list(string)
    macaddr = string
    name    = string
    netmask = number
  }))
}

variable "search_domains" {
  type = list(any)
}

variable "dns_servers" {
  type = list(any)
}

variable "user_data_blob" {
  default = {}
  type    = map(any)
}
