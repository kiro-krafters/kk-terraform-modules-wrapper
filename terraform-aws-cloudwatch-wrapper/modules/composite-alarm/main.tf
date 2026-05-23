module "composite_alarm" {
  source                    = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/composite-alarm?ref=v1.0.0"
  count                     = var.composite_alarm_configuration != null && var.composite_alarm_configuration != {} ? 1 : 0
  actions_enabled           = lookup(var.composite_alarm_configuration, "actions_enabled", true)
  actions_suppressor        = lookup(var.composite_alarm_configuration, "actions_suppressor", {})
  alarm_actions             = lookup(var.composite_alarm_configuration, "actions", null)
  alarm_description         = lookup(var.composite_alarm_configuration, "description", null)
  alarm_name                = lookup(var.composite_alarm_configuration, "name", local.cw_composite_alarm_name)
  alarm_rule                = lookup(var.composite_alarm_configuration, "rule", null)
  create                    = lookup(var.composite_alarm_configuration, "create", true)
  insufficient_data_actions = lookup(var.composite_alarm_configuration, "insufficient_data_actions", null)
  ok_actions                = lookup(var.composite_alarm_configuration, "ok_actions", null)
  tags                      = merge(local.tags, { Name = lookup(var.composite_alarm_configuration, "name", local.cw_composite_alarm_name) }, lookup(var.composite_alarm_configuration, "tags", {}))
}
