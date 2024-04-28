variable "nic_tags" {
    type = map(any)
    default = {
      "Name" = "tolunic"
    }
  
}

variable "subnet_id" {
    type = string
  
}

variable "private_ips" {
    type = list(string)
    default = ["10.0.1.100"]
  
}
