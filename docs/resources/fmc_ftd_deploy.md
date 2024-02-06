###########################################
#### Define deployment
###########################################
```hcl
resource "fmc_ftd_deploy" "ftd" {
    device = fmc_devices.Device1.id
    ignore_warning = false
    force_deploy = false

	depends_on = [
        fmc_access_rules.accessrule1, fmc_ftd_manualnat_rules.FTDManualNatRule1, fmc_policy_devices_assignments.policy_assignment, fmc_device_physical_interfaces.PhyInt_TenGi0_0, fmc_device_physical_interfaces.PhyInt_TenGi0_1
		]  
}
```