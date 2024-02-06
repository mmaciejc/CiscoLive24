###########################################
#### Define security zones
###########################################
```hcl
data "fmc_security_zones" "outside" {
      name = "Outside"
      depends_on = [
            fmc_security_zone.outside
        ]
}

data "fmc_security_zones" "inside" {
      name = "Inside"
      depends_on = [
            fmc_security_zone.inside
        ]
}
```