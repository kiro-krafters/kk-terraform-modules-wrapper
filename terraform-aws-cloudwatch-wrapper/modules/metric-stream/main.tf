module "metric_stream" {
  source                   = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/metric-stream?ref=v1.0.0"
  count                    = var.metric_stream_configuration != null && var.metric_stream_configuration != {} ? 1 : 0
  firehose_arn             = var.metric_stream_configuration.firehose_arn
  output_format            = var.metric_stream_configuration.output_format
  role_arn                 = var.metric_stream_configuration.role_arn
  create                   = lookup(var.metric_stream_configuration, "create", true)
  exclude_filter           = lookup(var.metric_stream_configuration, "exclude_filter", {})
  include_filter           = lookup(var.metric_stream_configuration, "include_filter", {})
  name                     = lookup(var.metric_stream_configuration, "name", null)
  name_prefix              = lookup(var.metric_stream_configuration, "name_prefix", null)
  statistics_configuration = lookup(var.metric_stream_configuration, "stats_config", [])
  tags                     = merge(local.tags, { Name = lookup(var.metric_stream_configuration, "name", "") }, lookup(var.metric_stream_configuration, "tags", {}))
}
