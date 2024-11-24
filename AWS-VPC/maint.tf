terraform {
  required_version = ">1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "bkt-01-lg"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Lincoln"
      managed-by = "terraform"
    }
  }
}

