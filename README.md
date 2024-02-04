Welcome to CiscoLive WIL LABSEC-2334 tutorial!

## Introduction

In this exercise, you are going to configure Cisco Secure Firewall via Terraform Provider.

The Cisco Secure Firewall infrastructure has been already deployed in a programmatic way in the AWS environment by Terraform AWS provider.

Cisco solution, in this scenario, consists of:
- Cisco Secure Firewall Management Center (FMC)
- Cisco Secure Firewall (formerly Firepower Threat Defense/FTD)

Other devices in use:
- Server 1 - running Apache2 on port 80
- Server 2 - running Apache2 on port 80


## Goal of the Lab:
To save time, the Firewalls are already deployed in the AWS cloud but have no configuration.

We are going to push the configuration that will create:
- hosts,
- ports
- physical interfaces,
- access policy
- NAT policy

As a result we should be able to access Linux server which is in Private subnet of AWS VPC.

## Network Diagram

## Lab tasks:
To complete this lab, you would need to go through the following tasks:
1. Login to Linux machine
2. Confirm the status of current enviroment and collect assigned IPs
3. Download the Terraform configurartion files from GitHub
4. Review and confirm configuration of Cisco Secure Firewall.
5. Deploy the desired configuration via Terraform.
6. Do the verification of the deployment and application.
7. Lab clean-up

#### Task 1:

Please SSH to Linux host and verify: 
- Credentials are provided in the POD description.
- you can use Putty or any SSH client you prefer.

#### Task 2:

In the user home directory `~/` there shold be folder named `aws_fw`. In this folder there is a Terraform configuration for provisioned Secure Firewall virtual components.
```bash
% cd ..
% cd aws_fw 
% terraform output
Serv-a_IP_Priv = toset([
  "<IP of the Server 1>",
])
Serv-b_IP_Priv = toset([
  "<IP of the Server 2>",
])
fmcv01_IP_Priv = ""
fmcv01_IP_Pub = ""
ftdv01_IP = ""
ftdv01_IP_Inside = ""
ftdv01_IP_Mgmt = toset([
  "",
])
ftdv01_IP_Outside = ""
```



You can verify current CSF deployment in AWS by:
```bash
% terraform plan 
... output ommited ...

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
```
#### Task 3:

Please be careful to keep the different Terraform configurations in the separate folders.
```bash
% cd ../
% mkdir github
% cd github
% git clone https://github.com/mmaciejc/CiscoLive24
% cd CiscoLive24
% ls
000-variables.tf		data_resources.tf		resource-interfaces.tf		resource-securityzones.tf
0000-fmc.tf			resource-accesspolicy.tf	resource-ipspolicy.tf		terraform.tfstate
0000-provider.tf		resource-devices.tf		resource-objects.tf		terraform.tfstate.backup
README.md			resource-ftdnatpolicy.tf	resource-policy_deployment.tf	terraform.tfvars

```

#### Task 4: Create Terraform variables file:


```hcl
fmc_username = "<please update>"
fmc_password = "<please update>"
fmc_hostname = "<please update>"
```

#### Task 5: Review and confirm current configuration


#### Task 6: Execute Terraform

```bash
% terraform init
% terraform plan
% terraform apply
```