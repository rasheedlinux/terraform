variable "image_id" {
  type        = string
  description = "custom image id rhel 9 for devops-practise"
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  type        = string
  default = "t3.micro"
}
variable "tags" {
    type = map 
    default = {
    Name = "backend"
    project = "expense"
    component = "backend"
    Environment = "dev"
    Terraform = "true"
    }
}
variable "sg_name"{
  default = "allow_ssh_tvname"
}
variable "description_name"{
  default = "Allow port number 22 for SSH access"
}
variable "from_prot"{
  default=22
  type = number
}
variable "to_prot"{
  default=22
  type = number
}
variable "protocol"{
  default = "tcp"
}

variable "ingress_cidr"{
  type = list(string)
  default = ["0.0.0.0/0"]
}
