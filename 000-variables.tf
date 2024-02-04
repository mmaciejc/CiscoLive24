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

variable "server_1_ip" {
  type = string
  description = "Server 1 Private IP address"
}

variable "server_2_ip" {
  type = string
  description = "Server 2 Private IP address"
}