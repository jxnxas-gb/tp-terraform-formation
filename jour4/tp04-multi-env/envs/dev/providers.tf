# envs/dev/providers.tf
# Provider AWS pour l'environnement dev.

terraform {
  required_version = ">= 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project     = "formation-terraform"
      Module      = "tp04-multi-env-jx"
      ManagedBy   = "Terraform"
      Environment = "dev"
    }
  }
}
