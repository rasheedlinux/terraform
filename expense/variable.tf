# Creating a Variable for ami of type map
variable "ec2_ami" {
  type = map
  default = {
    us-east-1 = "ami-09c813fb71547fc4f"
    us-west-2 = "ami-006fce872b320923e"
    }
}
variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

# Creating a Variable for region

variable "region" {
  default = "us-east-1"
}


# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
  default = "t3.micro"
}
variable "zone_id" {
  default = "Z01239902TIQWIVG9FBXG"
}
variable "domine_name" {
  default = "kabeerdas.online"
}