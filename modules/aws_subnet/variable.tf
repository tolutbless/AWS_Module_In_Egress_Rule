variable "availability_zone" {
    type = string
    default = "eu-central-1a"
  
}

variable "vpc_id" {
    type = string
  
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