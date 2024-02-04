###########################################
#### Define access policy
###########################################
resource "fmc_access_policies" "AccessPolicy1" {
  name = "MyAccessPolicyName1"

  # Optional
  description                               = "Terraform ACP"
  default_action                            = "block"
  default_action_send_events_to_fmc         = "true"
  default_action_log_end                    = "true"  
}

###########################################
#### Define access rule
###########################################

resource "fmc_access_rules" "accessrule1" {
    acp = fmc_access_policies.AccessPolicy1.id
    section = "mandatory"
    name = "MyAccessRule1"
    action = "allow"
    enabled = true
    enable_syslog = false
    send_events_to_fmc = true
    log_files = false
    log_end = true
    source_zones {
        source_zone {
            id = data.fmc_security_zones.outside.id
            type =  data.fmc_security_zones.outside.type
        }
    }
    destination_zones {
        destination_zone {
            id = data.fmc_security_zones.inside.id
            type =  data.fmc_security_zones.inside.type
        }
    }
    destination_networks {
        destination_network {
            id = fmc_host_objects.server1.id
            type =  fmc_host_objects.server1.type
        }
    }
    destination_ports {
        destination_port {
            id = data.fmc_port_objects.HTTP.id
            type =  data.fmc_port_objects.HTTP.type
        }        
    }
    ips_policy = data.fmc_ips_policies.IntrusionPolicy1.id
	depends_on = [
        data.fmc_security_zones.inside, data.fmc_security_zones.outside, fmc_host_objects.server1, fmc_port_objects.API_HTTP
		]       
}
