data "aws_ami" "devops_practise_rhel9" {
    most_recent  = true
    #image_id    =  ["ami-09c813fb71547fc4f"]
    #name       = ["RHEL-9-DevOps-Practice"]
    owners   = ["973714476881"]
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}