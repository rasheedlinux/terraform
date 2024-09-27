output "sg_info" {
#   description = "Public IP address of the EC2 instance"
 value       = aws_security_group.allow_multile_ports.ingress
}