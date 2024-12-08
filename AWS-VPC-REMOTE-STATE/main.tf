terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
  }

  backend "s3" {
    bucket = "lincolngadea-terraform-state"
    key    = "aws-vmterraform-tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Lincoln"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "lincolngadea-terraform-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}