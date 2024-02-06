###########################################
#### Define objects
###########################################
```hcl
resource "fmc_host_objects" "server1" {

    name        = "Server_1"
    value       = var.server_1_ip
    description = "Managed by Terraform"
}

resource "fmc_host_objects" "server2" {
    name        = "Server_2"
    value       = var.server_2_ip
    description = "Managed by Terraform"
}
```