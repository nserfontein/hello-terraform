provider "aws" {
  region = "eu-west-1"
}

module "webservice_cluster" {
  source = "../../../modules/services/webserver-cluster"
  //source = "git::git@github.com:foo/modules.git//webserver-cluster?ref=v0.0.2"

  cluster_name = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-nico"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size = 2
  max_size = 2

  enable_autoscaling = false

}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type = "ingress"
  security_group_id = "${module.webservice_cluster.elb_security_group_id}"
  from_port = 12345
  to_port = 12345
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}