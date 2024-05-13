provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 0.11.14"

  backend "s3" {
    bucket         = "kir-tfstate"
    key            = "eu-west-1/network/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "kir-terraform-statelock"
  }
}
