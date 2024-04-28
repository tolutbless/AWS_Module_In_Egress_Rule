variable "instance_ami" {
    type = string
    default = "ami-01e444924a2233b07"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "nic_id" {
    type = string
  
}

variable "instance_tags" {
    type = map(any)
    default = {
      "Name" = "toluec2"
    }
  
}