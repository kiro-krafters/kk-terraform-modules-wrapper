locals {
  # Generates the Cloudwatch resource names using company prefix, application name, region suffix, and environment.
  cw_composite_alarm_name = format("%s-cwca-%s-%s-%s", var.company_prefix, var.application, var.region_suffix, var.environment)

  # Default tags that will be applied to all resources unless overridden by custom tags.
  tags = var.tags
}
