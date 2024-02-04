###########################################
#### Define variables
###########################################

variable "fmc_password" {
  type        = string
  description = "FMC Password"
}

variable "fmc_username" {
  type = string
  description = "FMC username"
}

variable "fmc_hostname" {
  type = string
  description = "FMC hostname"
}

variable "ftd_mgmt_ip" {
  type = string
  description = "FTD Management Private IP address"
}

variable "ftd_outside_ip" {
  type = string
  description = "FTD Outside Private IP address"
}

variable "ftd_inside_ip" {
  type = string
  description = "FTD Inside Private IP address"
}