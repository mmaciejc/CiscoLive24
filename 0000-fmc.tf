###########################################
#### Define attributes for fmc terraform provider
###########################################

provider "fmc" {
  fmc_username = var.fmc_username
  fmc_password = var.fmc_password
  fmc_insecure_skip_verify = "true"
  fmc_host = var.fmc_hostname
}

