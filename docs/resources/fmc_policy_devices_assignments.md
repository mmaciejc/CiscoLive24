###########################################
#### Define policy assignement
###########################################
```hcl
resource "fmc_policy_devices_assignments" "policy_assignment" {
    policy {
        id = fmc_ftd_nat_policies.FTDNatPolicyName1.id
        type = fmc_ftd_nat_policies.FTDNatPolicyName1.type
    }
    target_devices {
        id = fmc_devices.Device1.id
        type = fmc_devices.Device1.type
    }
}
```