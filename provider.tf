terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }
  backend "s3" {
    bucket = "s3-terraform-state-eks"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"

  }


}

provider "aws" {
  region = "us-east-1"
}