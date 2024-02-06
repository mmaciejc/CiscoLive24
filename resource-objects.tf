###########################################
#### Define objects
###########################################

resource "fmc_host_objects" "server1" {

    name        = "Server_1"
    value       = var.server_1_ip
    description = "Managed by Terraform"
}

resource "fmc_port_objects" "API_HTTP" {

  name        = "API_HTTP_8080"
  port        = "8080"
  protocol    = "TCP"

}

