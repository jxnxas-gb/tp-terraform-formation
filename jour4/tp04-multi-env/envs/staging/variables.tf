# envs/staging/variables.tf

variable "aws_region" {
  type        = string
  description = "Région AWS pour le déploiement de staging"
  default     = "eu-west-3"
}
