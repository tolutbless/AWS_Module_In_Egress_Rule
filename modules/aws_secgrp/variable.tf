variable "secdescription" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "secgroup" {
    type = string
    default = "tolusec"
  
}

variable "vpc_id" {
    type = string
  
}

variable "cidr_block1" {
    type = string
    default = "10.0.0.0/16"
  
}