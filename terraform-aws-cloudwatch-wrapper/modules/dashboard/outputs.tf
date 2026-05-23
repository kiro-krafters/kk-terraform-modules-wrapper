output "dashboard_arn" {
  description = "ARN of the dashboard."
  value       = module.dashboard.dashboard_arn
}

output "dashboard_name" {
  description = "Name of the dashboard."
  value       = module.dashboard.dashboard_name
}

output "dashboard_body" {
  description = "Content of the dashboard."
  value       = module.dashboard.dashboard_body
}
