variable "region" {
    type = string
    default = "eu-central-1"
  
}

variable "cidr_block1" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "vpc_tags" {
    type = map(any)
    default = {
      "Name" = "toluvpc"
    }
  
}

variable "availability_zone" {
    type = string
    default = "eu-central-1a"
  
}




variable "cidr_block2" {
    type = string
    default = "10.0.1.0/24"
  
}

variable "subnet_tags" {
    type = map(any)
    default = {
      "Name" = "tolusubnet"
    }
  
}

variable "secdescription" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "secgroup" {
    type = string
    default = "tolusec"
  
}

variable "nic_tags" {
    type = map(any)
    default = {
      "Name" = "tolunic"
    }
  
}



variable "private_ips" {
    type = list(string)
    default = ["10.0.1.100"]
  
}

variable "instance_ami" {
    type = string
    default = "ami-01e444924a2233b07"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}



variable "instance_tags" {
    type = map(any)
    default = {
      "Name" = "toluec2"
    }
  
}







