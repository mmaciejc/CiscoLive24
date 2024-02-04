###########################################
#### Define existing objects
###########################################

data "fmc_network_objects" "Any_IPv4" {
  name = "any-ipv4"
}

data "fmc_port_objects" "HTTP" {
  name = "HTTP"
}

data "fmc_ips_policies" "IntrusionPolicy1" {
  name = "Balanced Security and Connectivity"
}

data "fmc_ips_policies" "ips_policy" {
	name = "Balanced Security and Connectivity"
}

data "fmc_device_physical_interfaces" "PhyInt_TenGig0_0" {
  name = "TenGigabitEthernet0/0"
  device_id = fmc_devices.Device1.id

	depends_on = [
		fmc_devices.Device1
	] 	 
}

data "fmc_device_physical_interfaces" "PhyInt_TenGig0_1" {
  name = "TenGigabitEthernet0/1"
  device_id = fmc_devices.Device1.id
	depends_on = [
		fmc_devices.Device1
	] 	   
}
