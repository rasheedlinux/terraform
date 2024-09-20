resource "aws_instance" "expense" {
  # Creates four identical aws ec2 instances
  count = length(var.instance_names)  
  
  # All four instances will have the same ami and instance_type
  ami = lookup(var.ec2_ami,var.region) 
  instance_type = var.instance_type # 
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = var.instance_names[count.index]
  }
}