terraform {
  cloud {
    organization = "024_2023-summer-cloud-t"

    workspaces {
      name = "billing-notice"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
