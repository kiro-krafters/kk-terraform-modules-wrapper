module "log_subscription_filter" {
  source          = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/log-subscription-filter?ref=v1.0.0"
  count           = var.log_subscription_filter_configuration != null && var.log_subscription_filter_configuration != {} ? 1 : 0
  create          = lookup(var.log_subscription_filter_configuration, "create", true)
  destination_arn = lookup(var.log_subscription_filter_configuration, "destination_arn", null)
  distribution    = lookup(var.log_subscription_filter_configuration, "distribution", null)
  filter_pattern  = lookup(var.log_subscription_filter_configuration, "filter_pattern", null)
  log_group_name  = lookup(var.log_subscription_filter_configuration, "log_group_name", null)
  name            = lookup(var.log_subscription_filter_configuration, "name", local.cw_sub_filter_name)
  role_arn        = lookup(var.log_subscription_filter_configuration, "role_arn", null)
}
