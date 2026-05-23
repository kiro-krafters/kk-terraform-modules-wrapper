locals {
  # Generates the Cloudwatch resource names using company prefix, application name, region suffix, and environment.
  cw_sub_filter_name = format("%s-cwlsubf-%s-%s-%s", var.company_prefix, var.application, var.region_suffix, var.environment)
}
