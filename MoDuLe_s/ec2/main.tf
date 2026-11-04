resource "aws_instance" "jenkins" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name     = "myserver"
  subnet_id     = var.subnet_id
  security_groups = [var.project_sg]
  associate_public_ip_address = true
  tags = {
    Name = var.instance_name
  }
  
}