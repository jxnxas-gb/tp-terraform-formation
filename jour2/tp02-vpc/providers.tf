terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"

  default_tags {
    tags = {
      Project     = "formation-terraform"
      ManagedBy   = "Terraform"
      Module      = "tp02-vpc"
      Environment = var.environment
      Owner       = "etudiant17"
    }
  }
}