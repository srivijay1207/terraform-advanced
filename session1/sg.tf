resource "aws_security_group" "allow_tls" {
  name        = var.sg_group
  description = "Allow TLS inbound traffic"
  

  ingress {
    description      = "TLS from all"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_block
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_block
   
  }

  tags = {
    Name = "allow_tls"
  }
}