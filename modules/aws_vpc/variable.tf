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