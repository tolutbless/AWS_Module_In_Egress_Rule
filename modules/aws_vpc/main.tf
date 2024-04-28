resource "aws_vpc" "this" {
 cidr_block = var.cidr_block1
 
 tags = var.vpc_tags
}

