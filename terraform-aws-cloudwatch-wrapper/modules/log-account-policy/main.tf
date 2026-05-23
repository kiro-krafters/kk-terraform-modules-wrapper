module "log_account_policy" {
  source                                        = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch/modules/log-account-policy?ref=v1.0.0"
  count                                         = var.log_account_policy_configuration != null && var.log_account_policy_configuration != {} ? 1 : 0
  audit_statement_sid                           = lookup(var.log_account_policy_configuration, "audit_stmt_sid", "audit-policy")
  create                                        = lookup(var.log_account_policy_configuration, "create", true)
  create_log_data_protection_policy             = lookup(var.log_account_policy_configuration, "create_log_data_protection_policy", false)
  data_identifiers                              = lookup(var.log_account_policy_configuration, "data_identifiers", null)
  deidentify_statement_sid                      = lookup(var.log_account_policy_configuration, "deidentify_stmt_sid", "redact-policy")
  findings_destination_cloudwatch_log_group     = lookup(var.log_account_policy_configuration, "fd_cw_log_group", null)
  findings_destination_firehose_delivery_stream = lookup(var.log_account_policy_configuration, "fd_fh_delivery_stream", null)
  findings_destination_s3_bucket                = lookup(var.log_account_policy_configuration, "fd_s3_bucket", null)
  log_account_policy_name                       = lookup(var.log_account_policy_configuration, "name", local.cw_log_account_policy_name)
  log_account_policy_scope                      = lookup(var.log_account_policy_configuration, "scope", null)
  log_account_policy_selection_criteria         = lookup(var.log_account_policy_configuration, "selection_criteria", null)
  log_account_policy_type                       = lookup(var.log_account_policy_configuration, "type", "DATA_PROTECTION_POLICY")
  log_data_protection_description               = lookup(var.log_account_policy_configuration, "data_protection_description", null)
  log_data_protection_policy_name               = lookup(var.log_account_policy_configuration, "data_protection_policy_name", null)
  policy_document                               = lookup(var.log_account_policy_configuration, "policy_document", null)
}
