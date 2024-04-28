resource "aws_security_group" "this" {
  name        = var.secgroup
  description = var.secdescription
  vpc_id      = var.vpc_id

  ingress {
   description = "TLS from VPC"
   from_port   = 443
   to_port     = 443
   protocol    = "tcp"
   cidr_blocks = [var.cidr_block1]
 }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "tolusec"
  }
}

