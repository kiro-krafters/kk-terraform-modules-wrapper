locals {
  # Generates the Cloudwatch resource names using company prefix, application name, region suffix, and environment.
  cw_log_stream_name = format("%s-cwlstrm-%s-%s-%s", var.company_prefix, var.application, var.region_suffix, var.environment)
}
