provider "aws" {
  region = "eu-west-1"
}

module "webservice_cluster" {
  source = "../../../modules/services/webserver-cluster"
  //source = "git::git@github.com:foo/modules.git//webserver-cluster?ref=v0.0.1"

  cluster_name = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-state-nico"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"

  //instance_type = "m4.large"
  instance_type = "t2.micro"

  min_size      = 2
  max_size      = 10

  enable_autoscaling = true

}
