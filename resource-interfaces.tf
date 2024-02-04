###########################################
#### Define interfaces
###########################################

resource "fmc_device_physical_interfaces" "PhyInt_TenGi0_0" {
  name = "TenGigabitEthernet0/0"
  device_id = fmc_devices.Device1.id
  physical_interface_id = data.fmc_device_physical_interfaces.PhyInt_TenGig0_0.id
  security_zone_id = fmc_security_zone.outside.id
  enabled = true
  if_name = "outside"
  mode = "NONE"
	ipv4_dhcp_enabled = "true"
	ipv4_dhcp_route_metric = 1

	depends_on = [
		data.fmc_device_physical_interfaces.PhyInt_TenGig0_0
	] 	   
}


resource "fmc_device_physical_interfaces" "PhyInt_TenGi0_1" {
  name = "TenGigabitEthernet0/1"
  device_id = fmc_devices.Device1.id
  physical_interface_id = data.fmc_device_physical_interfaces.PhyInt_TenGig0_1.id
  security_zone_id = fmc_security_zone.inside.id
  enabled = true
  if_name = "inside"
  mode = "NONE"
	ipv4_dhcp_enabled = "true"
	ipv4_dhcp_route_metric = 255

	depends_on = [
		data.fmc_device_physical_interfaces.PhyInt_TenGig0_1
	] 	   
}
