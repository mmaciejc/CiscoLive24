###########################################
#### Define objects
###########################################

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

resource "fmc_network_objects" "network1" {

  # Mandatory
  name        = "Inside_LAN"
  value       = "10.0.20.0/24"

  # Optional
  description = "Managed by Terraform"
}

resource "fmc_port_objects" "API_HTTP" {

  # Mandatory
  name        = "API_HTTP"
  port        = "8080"
  protocol    = "TCP"

}

