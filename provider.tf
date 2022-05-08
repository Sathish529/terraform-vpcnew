provider "aws" {
  region = var.AWS_REGION
  shared_credentials_file = "~/.aws/credentials"
}
terraform {
 ... some backend config if needed lands here ...
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.2" <- you hardcode provider version here
    }
  }
}
