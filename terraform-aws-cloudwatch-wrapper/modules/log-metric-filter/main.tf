module "log_metric_filter" {
  source                              = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch/modules/log-metric-filter?ref=main"
  count                               = var.log_metric_filter_configuration != null && var.log_metric_filter_configuration != {} ? 1 : 0
  log_group_name                      = var.log_metric_filter_configuration.log_group_name
  metric_transformation_name          = var.log_metric_filter_configuration.metric_transformation_name
  metric_transformation_namespace     = var.log_metric_filter_configuration.metric_transformation_namespace
  name                                = lookup(var.log_metric_filter_configuration, "name", local.cw_metric_filter_name)
  pattern                             = var.log_metric_filter_configuration.pattern
  create_cloudwatch_log_metric_filter = lookup(var.log_metric_filter_configuration, "create", true)
  metric_transformation_default_value = lookup(var.log_metric_filter_configuration, "mt_default_value", null)
  metric_transformation_dimensions    = lookup(var.log_metric_filter_configuration, "mt_dimensions", {})
  metric_transformation_unit          = lookup(var.log_metric_filter_configuration, "mt_unit", null)
  metric_transformation_value         = lookup(var.log_metric_filter_configuration, "mt_value", "1")
}
