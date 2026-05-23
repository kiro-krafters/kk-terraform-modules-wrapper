module "kinesis_stream_basic" {
  source = "git@github.com:CA-Bridge/ccaas-terraform-modules-wrapper.git//terraform-aws-kinesis-stream?ref=v1.0.0"
  tags   = local.tags
}
