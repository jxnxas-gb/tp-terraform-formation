# envs/dev/backend.tf
# Backend S3 natif : state stocké dans s3://tf-state-junias-etudiant17-formation/envs/dev/vpc/terraform.tfstate
# use_lockfile = true utilise le lock S3 natif (TF >= 1.10), pas besoin de DynamoDB.

terraform {
  backend "s3" {
    bucket       = "tf-state-junias-etudiant17-formation" # <-- ton bucket
    key          = "envs/dev/vpc/terraform.tfstate"
    region       = "eu-west-3"
    encrypt      = true
    use_lockfile = true
  }
}
