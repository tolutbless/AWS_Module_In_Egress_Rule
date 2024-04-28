resource "aws_instance" "this" {
    ami             = var.instance_ami
    instance_type   = var.instance_type


    tags = var.instance_tags


    network_interface {
        device_index            = 0
        network_interface_id    = var.nic_id
    }

   
}


