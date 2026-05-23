
# Fixed outputs.tf for the wrapper module

output "wrapper" {
  description = "Map of outputs of a wrapper."
  value       = module.wrapper
  sensitive   = true # At least one sensitive module output (secret_string) found (requires Terraform 0.14+)
}

# Fix: Use values() function to get all secret ARNs from the for_each map
output "secret_arn" {
  description = "The ARN of the secret(s)"
  value       = values(module.wrapper)[*].secret_arn
}

# Fix: Use values() function to get all secret IDs from the for_each map
output "secret_id" {
  description = "The ID of the secret(s)"
  value       = values(module.wrapper)[*].secret_id
}
