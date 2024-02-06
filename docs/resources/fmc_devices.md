###########################################
#### Define device
###########################################
```hcl
resource "fmc_devices" "Device1" {

  # Mandatory  
  name              = "vFTD"
  hostname          = var.ftd_mgmt_ip
  regkey            = "Cisco123"

  access_policy { 
    id = fmc_access_policies.AccessPolicy1.id
	}

  # Optional  
  license_caps = ["THREAT"]
  performance_tier  = "FTDv5"

}
```