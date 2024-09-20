output "private_ip_addr" {
  value = aws_instance.expense.private_ip
}
output "public_ip_addr" {
  value = aws_instance.expense.public_ip
}

