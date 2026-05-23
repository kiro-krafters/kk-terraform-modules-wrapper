module "aws_kms" {
  source                                 = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-kms?ref=v1.0.3"
  description                            = var.description
  multi_region                           = var.multi_region
  enable_default_policy                  = var.enable_default_policy
  key_owners                             = [local.current_identity]
  key_administrators                     = [local.current_identity]
  key_users                              = [local.current_identity]
  key_service_users                      = [local.current_identity]
  key_symmetric_encryption_users         = [local.current_identity]
  key_hmac_users                         = [local.current_identity]
  key_asymmetric_public_encryption_users = [local.current_identity]
  key_asymmetric_sign_verify_users       = [local.current_identity]
  primary_key_arn                        = var.primary_key_arn
  create_replica                         = var.create_replica
  aliases                                = var.name
  aliases_use_name_prefix                = false
  key_statements                         = var.key_statements
  rotation_period_in_days                = var.rotation_period_in_days
  tags                                   = merge(var.tags, { "map-migrated" = "123456" })
}
