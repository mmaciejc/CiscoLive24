###########################################
#### Define nat rule
###########################################
```hcl
resource "fmc_ftd_manualnat_rules" "FTDManualNatRule1" {
    nat_policy = fmc_ftd_nat_policies.FTDNatPolicyName1.id
    description = "Managed by Terraform"
    nat_type = "static"
    section = "before_auto"
    source_interface {
        id = data.fmc_security_zones.outside.id
        type = data.fmc_security_zones.outside.type
    }
    destination_interface {
        id = data.fmc_security_zones.inside.id
        type = data.fmc_security_zones.inside.type
    }
    original_source {
        id = data.fmc_network_objects.Any_IPv4.id
        type = data.fmc_network_objects.Any_IPv4.type
    }
    translated_destination {
        id = fmc_host_objects.server1.id
        type = fmc_host_objects.server1.type
    }

    original_destination_port{
        id = fmc_port_objects.API_HTTP.id
        type = fmc_port_objects.API_HTTP.type
    }

    translated_destination_port {
         id = data.fmc_port_objects.HTTP.id
        type = data.fmc_port_objects.HTTP.type
    }
    interface_in_original_destination = true
    interface_in_translated_source = true
	depends_on = [
        data.fmc_security_zones.inside, data.fmc_security_zones.outside, data.fmc_port_objects.HTTP, fmc_port_objects.API_HTTP
		]        
}
```