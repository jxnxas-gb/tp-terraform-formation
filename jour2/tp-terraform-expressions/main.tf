locals {
  env_config = {
    dev = {
      versioning = false
      nat_count  = 1
    }
    staging = {
      versioning = false
      nat_count  = 1
    }
    prod = {
      versioning = true
      nat_count  = 2
    }
  }

  name_prefix = "${var.project}-${var.environment}"

  public_cidrs = [
    for i in range(length(var.azs)) : cidrsubnet(var.vpc_cidr, 8, i + 1)
  ]

  private_cidrs = [
    for i in range(length(var.azs)) : cidrsubnet(var.vpc_cidr, 8, i + 10)
  ]
}