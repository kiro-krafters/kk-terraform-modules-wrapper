module "amazon_connect_basic" {
  source         = "git::https://github.com/kiro-krafters/kk-terraform-modules-wrapper.git//terraform-aws-amazonconnect?ref=main"
  prefix_company = "ch"
  lob            = "telesales"
  prefix_region  = "use1"
  application    = "connect"
  env            = "dev"
  tags           = local.tags
}
