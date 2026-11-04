resource "aws_security_group" "my_sameer_group"{
    name = "my_sameer_group"
    description = "Allow SSH and HTTP inbound traffic"
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
}
