###########################################
#### Define access policy
###########################################
```hcl
resource "fmc_access_policies" "AccessPolicy1" {
  name = "MyAccessPolicyName1"

  # Optional
  description                               = "Terraform ACP"
  default_action                            = "block"
  default_action_send_events_to_fmc         = "true"
  default_action_log_end                    = "true"  
}
```
