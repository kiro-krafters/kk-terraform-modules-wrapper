module "firehose" {
  source         = "git::https://github.com/kiro-krafters/kk-terraform-modules-wrapper.git//ch-terraform-aws-firehose?ref=main"
  prefix_company = "ch"
  prefix_region  = "use1"
  application    = "connect"
  env            = "dev"
  tags           = local.tags
}
