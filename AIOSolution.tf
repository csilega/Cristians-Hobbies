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

variable "image_folder" {
  default = "C:/Users/sileg/OneDrive/Documents/Terraform P1/images"
}


data "local_file" "images" {
  count    = length(fileset(var.image_folder, "**/*.*"))
  filename = fileset(var.image_folder, "**/*.*")[count.index]
}

resource "aws_s3_object" "images" {
  count  = length(data.local_file.images)
  bucket = aws_s3_bucket.bucket.id
  key    = "images/${basename(data.local_file.images[count.index].filename)}"
  source = data.local_file.images[count.index].filename
}
