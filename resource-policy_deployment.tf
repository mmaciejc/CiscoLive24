###########################################
#### Define policy assignement
###########################################

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

###########################################
#### Define deployment
###########################################

resource "fmc_ftd_deploy" "ftd" {
    device = fmc_devices.Device1.id
    ignore_warning = false
    force_deploy = false

	depends_on = [
        fmc_access_rules.accessrule1, fmc_ftd_manualnat_rules.FTDManualNatRule1, fmc_policy_devices_assignments.policy_assignment
		]  
}