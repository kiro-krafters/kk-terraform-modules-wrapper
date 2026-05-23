module "amazon_connect_advance" {
  source                       = "git::https://github.com/kiro-krafters/kk-terraform-modules-wrapper.git//terraform-aws-amazonconnect?ref=main"
  bucket_name                  = "test-bucket"
  contact_flows                = {}
  quick_connects               = {}
  lambda_function_associations = {}
  contact_flow_modules         = {}
  routing_profiles             = {}
  security_profiles            = {}
  users                        = {}
  tags                         = local.tags
}
