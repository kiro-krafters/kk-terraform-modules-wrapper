output "cloudwatch_log_metric_filter_id" {
  description = "The name of the metric filter."
  value       = one(module.log_metric_filter[*].cloudwatch_log_metric_filter_id)
}
