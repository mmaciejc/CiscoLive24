###########################################
#### Define security zones
###########################################
```hcl
resource "fmc_security_zone" "outside" {
  name          = "Outside"
  interface_mode = "ROUTED"
}

resource "fmc_security_zone" "inside" {
  name          = "Inside"
  interface_mode = "ROUTED"
}
```