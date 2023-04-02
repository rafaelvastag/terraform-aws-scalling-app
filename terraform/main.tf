terraform {
  required_version = "1.4.0"

  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "4.57.1"
    }
    random = {
      source  = "registry.terraform.io/hashicorp/random"
      version = "3.4.3"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}