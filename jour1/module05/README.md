# Premier Projet Terraform - Provisioning AWS S3

## Description
Ce projet d'initiation à l'Infrastructure as Code (IaC) permet de déployer de manière automatisée, idempotente et propre un bucket S3 sur AWS en utilisant **Terraform**.

L'architecture s'appuie sur la récupération dynamique de l'identité du compte AWS courant et génère un suffixe unique pour éviter les collisions globales de nommage S3.

## Chaîne d'outils
* **Terraform** & `tfenv`
* **AWS CLI v2** (Profil de formation authentifié)
* **HCL** (HashiCorp Configuration Language)
* **TFLint** (Linter de configuration)

## Architecture du Projet
* `providers.tf` : Configuration globale de Terraform, du provider `random` et du provider `aws` avec injection de `default_tags` pour la gouvernance.
* `main.tf` : Logique de l'infrastructure (Data source d'identité, générateur `random_pet`, et ressource `aws_s3_bucket`).
* `outputs.tf` : Données exposées après déploiement (`bucket_name`, `bucket_arn`, `account_id`).

## 🚀 Commandes Utilisées
```bash
terraform init          # Initialisation et téléchargement des providers
terraform validate      # Validation syntaxique du code HCL
terraform plan          # Simulation des changements
terraform apply         # Déploiement des ressources sur AWS
terraform destroy       # Nettoyage et suppression complète