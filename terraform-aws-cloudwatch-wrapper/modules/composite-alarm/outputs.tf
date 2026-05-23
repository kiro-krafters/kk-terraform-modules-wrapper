output "cloudwatch_composite_alarm" {
  description = "Cloudwatch composite alarm."
  value = {
    ARN = one(module.composite_alarm[*].cloudwatch_composite_alarm_arn)
    ID  = one(module.composite_alarm[*].cloudwatch_composite_alarm_id)
  }
}