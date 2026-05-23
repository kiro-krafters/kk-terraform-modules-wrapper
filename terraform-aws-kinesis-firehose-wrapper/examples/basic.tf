module "firehose" {
  source         = "git@github.com:CA-Bridge/ccaas-terraform-modules-wrapper.git//ch-terraform-aws-firehose?ref=v1.0.0"
  prefix_company = "ch"
  prefix_region  = "use1"
  application    = "connect"
  env            = "dev"
  tags           = local.tags
}
