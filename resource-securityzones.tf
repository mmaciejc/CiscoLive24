###########################################
#### Define security zones
###########################################

resource "fmc_security_zone" "outside" {
  name          = "Outside"
  interface_mode = "ROUTED"
}

resource "fmc_security_zone" "inside" {
  name          = "Inside"
  interface_mode = "ROUTED"
}

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