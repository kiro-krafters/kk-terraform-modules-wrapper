locals {
  # Generates the Cloudwatch resource names using company prefix, application name, region suffix, and environment.
  cw_log_account_policy_name = format("%s-cwlaccpol-%s-%s-%s", var.company_prefix, var.application, var.region_suffix, var.environment)
}
