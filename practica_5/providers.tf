terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.30.0"
    }
  }
  required_version = "~>1.6.0"
}

provider "aws" {
  region = "us-east-1"
  alias  = "virginia"
}

provider "aws" {
  region = "us-east-2"
  alias  = "ohio"
}

variable "virginia_cidr" {

}

variable "ohio_cidr" {

}