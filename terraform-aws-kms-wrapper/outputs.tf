output "wrapper" {
  description = "Map of outputs of a wrapper."
  value       = module.aws_kms
  sensitive   = true # At least one sensitive module output (grants) found (requires Terraform 0.14+)
}

output "key_arn" {
  value       = module.aws_kms.key_arn
  description = "AWS kms key arn"
}

output "key_id" {
  description = "The globally unique identifier for the key"
  value       = module.aws_kms.key_id
}
