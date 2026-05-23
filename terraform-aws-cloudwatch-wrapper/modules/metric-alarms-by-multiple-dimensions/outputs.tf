output "cloudwatch_metric_alarm_multiple_dimensions" {
  description = "Cloudwatch metric alarm."
  value = {
    ARNs = one(module.metric_alarm_multiple_dimensions[*].cloudwatch_metric_alarm_arns)
    IDs  = one(module.metric_alarm_multiple_dimensions[*].cloudwatch_metric_alarm_ids)
  }
}
