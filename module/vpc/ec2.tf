#create instance 1

resource "aws_instance" "instance"{
    ami = var.ami
    instance_type = var.type
    key_name = var.key_pair
    security_groups = [aws_subnet_group.security_group.id]
    subnet_id = aws_subnet.public_subnet_azi.id
    availability_zone = data.aws_availability_zone.availability_zone.names[0]

    user_data = <<-EOF
             #!/bin/b
}