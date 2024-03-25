terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "roboshop-remote-state-pvk"
    key            = "python-ec2"
    region         = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}