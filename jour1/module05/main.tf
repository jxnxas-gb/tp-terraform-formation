# Récupérer l'ID du compte AWS courant (sans effet de bord)
data "aws_caller_identity" "current" {}

# Générer un suffixe aléatoire pour éviter les collisions de noms globaux
resource "random_pet" "bucket_suffix" {
  length    = 2
  separator = "-"
}

# Déclaration du bucket S3 principal
resource "aws_s3_bucket" "first" {
  bucket = "formation-tf-${data.aws_caller_identity.current.account_id}-${random_pet.bucket_suffix.id}"

  tags = {
    Name = "Bucket de test formation Junias"
  }
}