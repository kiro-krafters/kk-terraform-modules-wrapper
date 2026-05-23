module "metric_alarm_multiple_dimensions" {
  source                                = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch/modules/metric-alarms-by-multiple-dimensions?ref=main"
  count                                 = var.metric_alarm_multi_dimension_config != null && var.metric_alarm_multi_dimension_config != {} ? 1 : 0
  alarm_name                            = lookup(var.metric_alarm_multi_dimension_config, "name", local.cw_metric_alarm_name)
  comparison_operator                   = var.metric_alarm_multi_dimension_config.comparison_operator
  evaluation_periods                    = var.metric_alarm_multi_dimension_config.evaluation_periods
  actions_enabled                       = lookup(var.metric_alarm_multi_dimension_config, "actions_enabled", true)
  alarm_actions                         = lookup(var.metric_alarm_multi_dimension_config, "actions", null)
  alarm_description                     = lookup(var.metric_alarm_multi_dimension_config, "description", null)
  alarm_name_delimiter                  = lookup(var.metric_alarm_multi_dimension_config, "name_delimiter", "")
  create_metric_alarm                   = lookup(var.metric_alarm_multi_dimension_config, "create", true)
  datapoints_to_alarm                   = lookup(var.metric_alarm_multi_dimension_config, "datapoints", null)
  dimensions                            = lookup(var.metric_alarm_multi_dimension_config, "dimensions", {})
  evaluate_low_sample_count_percentiles = lookup(var.metric_alarm_multi_dimension_config, "evaluate_lscp", null)
  extended_statistic                    = lookup(var.metric_alarm_multi_dimension_config, "extended_stat", null)
  insufficient_data_actions             = lookup(var.metric_alarm_multi_dimension_config, "insufficient_data_actions", null)
  metric_name                           = lookup(var.metric_alarm_multi_dimension_config, "metric_name", null)
  metric_query                          = lookup(var.metric_alarm_multi_dimension_config, "metric_query", [])
  namespace                             = lookup(var.metric_alarm_multi_dimension_config, "namespace", null)
  ok_actions                            = lookup(var.metric_alarm_multi_dimension_config, "ok_actions", null)
  period                                = lookup(var.metric_alarm_multi_dimension_config, "period", null)
  statistic                             = lookup(var.metric_alarm_multi_dimension_config, "statistic", null)
  threshold                             = var.metric_alarm_multi_dimension_config.threshold
  treat_missing_data                    = lookup(var.metric_alarm_multi_dimension_config, "treat_missing_data", "missing")
  unit                                  = lookup(var.metric_alarm_multi_dimension_config, "unit", null)
  tags                                  = merge(local.tags, { Name = lookup(var.metric_alarm_multi_dimension_config, "name", local.cw_metric_alarm_name) }, lookup(var.metric_alarm_multi_dimension_config, "tags", {}))
}
