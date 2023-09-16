resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_tls.name]
  tags = {
    Name = "web"
  }
}