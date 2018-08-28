variable "fqdn" {
  description = "The fully-qualified domain name of the resulting S3 website."
}

variable "domain" {
  description = "The domain name"
  default     = "sites.adborden.net"
}

# Allowed IPs that can directly access the S3 bucket
variable "allowed_ips" {
  type    = "list"
  default = ["0.0.0.0/0"]
}
