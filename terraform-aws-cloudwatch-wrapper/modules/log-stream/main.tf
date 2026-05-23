module "log_stream" {
  source         = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch/modules/log-stream?ref=main"
  count          = var.log_stream_configuration != null && var.log_stream_configuration != {} ? 1 : 0
  create         = lookup(var.log_stream_configuration, "create", true)
  log_group_name = lookup(var.log_stream_configuration, "log_group_name", null)
  name           = lookup(var.log_stream_configuration, "name", local.cw_log_stream_name)
}
