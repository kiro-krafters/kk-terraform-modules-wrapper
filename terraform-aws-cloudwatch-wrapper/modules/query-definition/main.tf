module "query_definition" {
  source          = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/query-definition?ref=v1.0.0"
  count           = var.query_definition_configuration != null && var.query_definition_configuration != {} ? 1 : 0
  name            = var.query_definition_configuration.name
  query_string    = var.query_definition_configuration.string
  create          = lookup(var.query_definition_configuration, "create", true)
  log_group_names = lookup(var.query_definition_configuration, "log_groups", null)
}
