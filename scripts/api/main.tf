provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/api.tfstate"
    region = "us-east-2"
  }
}

module "init" {
  source = "../../modules/init"

  state_key = "api"
}
