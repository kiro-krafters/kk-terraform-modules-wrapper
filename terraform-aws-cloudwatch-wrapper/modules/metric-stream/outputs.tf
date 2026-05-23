output "cloudwatch_metric_stream" {
  description = "Cloudwatch metric stream."
  value = {
    ARN            = one(module.metric_stream[*].cloudwatch_metric_stream)
    CreationDate   = one(module.metric_stream[*].cloudwatch_metric_stream_creation_date)
    LastUpdateDate = one(module.metric_stream[*].cloudwatch_metric_stream_last_update_date)
    State          = one(module.metric_stream[*].cloudwatch_metric_stream_state)
  }
}