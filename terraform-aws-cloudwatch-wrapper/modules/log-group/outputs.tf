output "cloudwatch_log_group" {
  description = "Cloudwatch log group."
  value = {
    Name = one(module.log_group[*].cloudwatch_log_group_name)
    ARN  = one(module.log_group[*].cloudwatch_log_group_arn)
  }
}