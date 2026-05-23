module "log_group" {
  source            = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch/modules/log-group?ref=main"
  count             = var.log_group_configuration != null && var.log_group_configuration != {} ? 1 : 0
  create            = lookup(var.log_group_configuration, "create", true)
  name              = lookup(var.log_group_configuration, "name", null)
  name_prefix       = lookup(var.log_group_configuration, "name_prefix", null)
  retention_in_days = lookup(var.log_group_configuration, "retention_in_days", null)
  kms_key_id        = lookup(var.log_group_configuration, "kms_key_id", null)
  log_group_class   = lookup(var.log_group_configuration, "log_group_class", null)
  skip_destroy      = lookup(var.log_group_configuration, "skip_destroy", null)
  tags              = merge(local.tags, { Name = lookup(var.log_group_configuration, "name", "") }, lookup(var.log_group_configuration, "tags", {}))
}
