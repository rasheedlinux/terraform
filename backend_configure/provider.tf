terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }
backend "s3" {
    bucket   = "tfremote1"
    key      = "3tier_expense"
    region   = "us-east-1"
    dynamodb_table = "3tier_lock"
}
}
provider "aws" {
  
#     backend "s3" {
#     bucket = "81s-remote-state"
#     key    = "remote-state-demo"
#     region = "us-east-1"
#     dynamodb_table = "81s-locking"
#
}
