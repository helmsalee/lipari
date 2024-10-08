# Ubuntu Versions
variable "ubuntu_2204_minimal_sku" {
  type        = string
  description = "SKU for Ubuntu 22.04 Minimal"
  default     = "ubuntu-os-cloud/ubuntu-minimal-2204-jammy-v20240926"
}

variable "ubuntu_2204_lts_sku" {
  type        = string
  description = "SKU for Ubuntu 22.04 Minimal"
  default     = "ubuntu-os-cloud/ubuntu-2204-jammy-v20240927"
}