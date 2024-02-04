###########################################
#### Define terraform provider
###########################################

terraform {
  required_providers {
    fmc = {
      source = "CiscoDevNet/fmc"
      version = "1.4.6"
    }
  }
}
