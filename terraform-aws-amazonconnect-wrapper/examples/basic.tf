module "amazon_connect_basic" {
  source         = "git@github.com:CA-Bridge/ccaas-terraform-modules-wrapper.git//terraform-aws-amazonconnect?ref=v1.0.0"
  prefix_company = "ch"
  lob            = "telesales"
  prefix_region  = "use1"
  application    = "connect"
  env            = "dev"
  tags           = local.tags
}
