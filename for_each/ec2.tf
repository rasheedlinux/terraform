resource "aws_instance" "terraform" {
  for_each = var.instance_types
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = each.value
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]
  tags = {
      Environment = "dev"
      Name        = each.key
    }
 
}
resource "aws_security_group" "allow_ssh" {
  # ... other configuration ...

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
   description = "ssh service ingress"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
}