variable "domain_name" {
  type = string
  default = "kabeerdas.online"
}
variable "hosted_zone_id" {
  type = string
  default = "Z01239902TIQWIVG9FBXG"
}
variable "instance_types"{
    type = map 
    default = {
    mysql = "t3.small"
    frontend = "t3.micro" 
    backend = "t3.micro"
    }
}