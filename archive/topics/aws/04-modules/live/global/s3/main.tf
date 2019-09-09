provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state-nico"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-nico"
    key = "global/s3/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "terraform-up-and-running-state-nico"
    key = "global/s3/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}


