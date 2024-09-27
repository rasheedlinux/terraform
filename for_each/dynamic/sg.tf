resource "aws_security_group" "allow_multile_ports" {
  # ... other configuration ...

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  dynamic "ingress"{
    for_each = var.ingress_ports
    content{

#description = "ssh service ingress"
   from_port   = ingress.value["from_port"]
   to_port     = ingress.value["to_port"]
   protocol    = ingress.value["protocol"]
   cidr_blocks = ingress.value["cidr_blocks"]
   description = ingress.value["description"]
    }
 }
}