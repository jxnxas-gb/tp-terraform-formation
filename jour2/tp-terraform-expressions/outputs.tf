output "config" {
  value = {
    prefix     = local.name_prefix
    cidrs      = local.public_cidrs
    versioning = local.env_config[var.environment].versioning
  }
}