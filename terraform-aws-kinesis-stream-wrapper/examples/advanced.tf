module "kinesis_stream_advance" {
  source                    = "git@github.com:CA-Bridge/ccaas-terraform-modules-wrapper.git//terraform-aws-kinesis-stream?ref=v1.0.0"
  shard_count               = 1
  retention_period          = 24
  shard_level_metrics       = []
  enforce_consumer_deletion = false
  encryption_type           = "NONE"
  kms_key_id                = "test-kms-key-id"
  create_policy_read_only   = true
  create_policy_write_only  = true
  create_policy_admin       = true
  tags                      = local.tags
}
