provider "aws" {
  region = "eu-west-1"
}

resource "aws_db_instance" "example" {
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name = "example_database"
  username = "admin"
  password = "${var.db_password}"
  skip_final_snapshot = true
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-nico"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "terraform-up-and-running-state-nico"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}

