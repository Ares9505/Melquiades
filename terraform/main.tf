terraform {
  required_providers {
    aws = "hashicorp/aws"
    version = "~> 4.16"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  shared_config_files      = ["/Users/ariel/.aws/conf"]
  shared_credentials_files = ["/Users/ariel/.aws/creds"]
  profile                  = "customprofile"
}