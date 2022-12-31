terraform {

required_providers {

azurerm = {

source = "hashicorp/azurerm"

version = "~> 3.0.2"

}
}

required_version = ">= 1.1.0"
}

provider "azurerm" { 
features {}
}
samreen@KMASTER:~/tasktf$ cat terraform.tf
rg_name="samnew"

location="west us"

vnet_name="new_group-vnet"

vnet_space=["10.0.0.0/16"]

subnet_name="sam_subnet" 

subnet_space=["10.0.2.0/24"]

nic_name="sam1_nic"

ip_name="sam2_ip"

pip_name="sam3_pip"

disk_name="samnew_disk1"

disk_size="64"

vm_name="samreen_vm"

vm_size="Standard_D2ads_v5"

vm_user="samreen1"

vm_password="Samreen010595"
