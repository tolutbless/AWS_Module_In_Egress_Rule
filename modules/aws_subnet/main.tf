resource "aws_subnet" "this" {
 vpc_id     = var.vpc_id
 cidr_block = var.cidr_block2
 availability_zone = var.availability_zone
 tags = var.subnet_tags
}





