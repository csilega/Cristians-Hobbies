terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "bucket" {
  bucket = "cristiansilegas-new-s3-bucket"

  tags = {
    Name        = "My bucket"
  }
}
