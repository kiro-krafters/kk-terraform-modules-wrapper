module "metric_alarm" {
  source                                = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch/modules/metric-alarm?ref=main"
  count                                 = var.metric_alarm_configuration != null && var.metric_alarm_configuration != {} ? 1 : 0
  alarm_name                            = lookup(var.metric_alarm_configuration, "name", local.cw_metric_alarm_name)
  comparison_operator                   = var.metric_alarm_configuration.comparison_operator
  evaluation_periods                    = var.metric_alarm_configuration.evaluation_periods
  actions_enabled                       = lookup(var.metric_alarm_configuration, "actions_enabled", true)
  alarm_actions                         = lookup(var.metric_alarm_configuration, "actions", null)
  alarm_description                     = lookup(var.metric_alarm_configuration, "description", null)
  create_metric_alarm                   = lookup(var.metric_alarm_configuration, "create", true)
  datapoints_to_alarm                   = lookup(var.metric_alarm_configuration, "datapoints", null)
  dimensions                            = lookup(var.metric_alarm_configuration, "dimensions", null)
  evaluate_low_sample_count_percentiles = lookup(var.metric_alarm_configuration, "evaluate_lscp", null)
  extended_statistic                    = lookup(var.metric_alarm_configuration, "extended_stat", null)
  insufficient_data_actions             = lookup(var.metric_alarm_configuration, "insufficient_data_actions", null)
  metric_name                           = lookup(var.metric_alarm_configuration, "metric_name", null)
  metric_query                          = lookup(var.metric_alarm_configuration, "metric_query", [])
  namespace                             = lookup(var.metric_alarm_configuration, "namespace", null)
  ok_actions                            = lookup(var.metric_alarm_configuration, "ok_actions", null)
  period                                = lookup(var.metric_alarm_configuration, "period", null)
  statistic                             = lookup(var.metric_alarm_configuration, "statistic", null)
  threshold                             = lookup(var.metric_alarm_configuration, "threshold", null)
  threshold_metric_id                   = lookup(var.metric_alarm_configuration, "threshold_metric_id", null)
  treat_missing_data                    = lookup(var.metric_alarm_configuration, "treat_missing_data", "missing")
  unit                                  = lookup(var.metric_alarm_configuration, "unit", null)
  tags                                  = merge(local.tags, { Name = lookup(var.metric_alarm_configuration, "name", local.cw_metric_alarm_name) }, lookup(var.metric_alarm_configuration, "tags", {}))
}
