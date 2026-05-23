module "log_stream" {
  source         = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/log-stream?ref=v1.0.0"
  count          = var.log_stream_configuration != null && var.log_stream_configuration != {} ? 1 : 0
  create         = lookup(var.log_stream_configuration, "create", true)
  log_group_name = lookup(var.log_stream_configuration, "log_group_name", null)
  name           = lookup(var.log_stream_configuration, "name", local.cw_log_stream_name)
}
