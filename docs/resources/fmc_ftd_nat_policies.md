###########################################
#### Define nat policy
###########################################
```hcl
resource "fmc_ftd_nat_policies" "FTDNatPolicyName1" {
    name = "MyFTDNatPolicyName1"
    description = "Managed by Terraform"
}
```
