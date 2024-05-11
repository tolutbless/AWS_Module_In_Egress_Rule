module "vpc" {
    source = "./modules/aws_vpc"
    cidr_block1 = var.cidr_block1
    vpc_tags = var.vpc_tags
  
}

module "subnet" {
    source = "./modules/aws_subnet"
    vpc_id = module.vpc.vpc_id
  
}

module "sec_group" {
    source = "./modules/aws_secgrp"
    secdescription = var.secdescription
    secgroup = var.secgroup
    vpc_id = module.vpc.vpc_id
    cidr_block1 = var.cidr_block1
    create_egress_rules = true
    create_ingress_rules = true


}

module "nic" {
    source = "./modules/aws_interface"
    subnet_id = module.subnet.subnet_id
    private_ips = var.private_ips
    nic_tags = var.nic_tags
  
}


module "instance" {
    source = "./modules/aws_instance"
    nic_id = module.nic.interface
  
}






