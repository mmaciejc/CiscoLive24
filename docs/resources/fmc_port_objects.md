###########################################
#### Define objects
###########################################
```hcl
resource "fmc_port_objects" "API_HTTP" {

  name        = "API_HTTP"
  port        = "8080"
  protocol    = "TCP"

}
```