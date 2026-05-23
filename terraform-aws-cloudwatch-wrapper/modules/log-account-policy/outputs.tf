output "log_account_policy_name" {
  description = "Name of Cloudwatch log account policy."
  value       = one(module.log_account_policy[*].log_account_policy_name)
}
