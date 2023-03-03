terraform {

  /* Uncomment this block to use Terraform Cloud for this project {
      organization = "organization-name"
      workspaces {
        name = "mini-project-*"
      }
  }
  */

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16.0"
    }
  }

  required_version = ">= 1.2.0"
}