###########################################
#### Define existing objects
###########################################
```hcl
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
```