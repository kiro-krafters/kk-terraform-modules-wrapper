output "cloudwatch_metric_alarm" {
  description = "Cloudwatch metric alarm."
  value = {
    ARN = one(module.metric_alarm[*].cloudwatch_metric_alarm_arn)
    ID  = one(module.metric_alarm[*].cloudwatch_metric_alarm_id)
  }
}