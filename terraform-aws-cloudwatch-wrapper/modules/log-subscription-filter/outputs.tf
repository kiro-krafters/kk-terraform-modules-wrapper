output "cloudwatch_log_subscription_filter_name" {
  description = "Log subscription filter name."
  value       = one(module.log_subscription_filter[*].cloudwatch_log_subscription_filter_name)
}
