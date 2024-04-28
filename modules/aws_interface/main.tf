resource "aws_network_interface" "this" {
    subnet_id        = var.subnet_id
    private_ips      = var.private_ips
    tags = var.nic_tags
}


