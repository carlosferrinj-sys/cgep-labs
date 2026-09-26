output "vault_name" {
  value       = aws_s3_bucket.vault.id
  description = "Nombre del bucket S3 de la bóveda de evidencias."
}