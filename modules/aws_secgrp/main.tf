resource "aws_security_group" "this" {
  name        = var.secgroup
  description = var.secdescription
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.create_ingress_rules ? [1] : []
    content {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }


   dynamic "egress" {
    for_each = var.create_egress_rules ? [1] : []
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"  
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "tolusec"
  }
}

