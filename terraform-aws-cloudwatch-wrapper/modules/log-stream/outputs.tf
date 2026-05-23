output "cloudwatch_log_stream" {
  description = "Cloudwatch log stream."
  value = {
    Name = one(module.log_stream[*].cloudwatch_log_stream_name)
    ARN  = one(module.log_stream[*].cloudwatch_log_stream_arn)
  }
}
