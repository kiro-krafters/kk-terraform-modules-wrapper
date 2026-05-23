module "kinesis_stream_basic" {
  source = "git::https://github.com/kiro-krafters/kk-terraform-modules-wrapper.git//terraform-aws-kinesis-stream?ref=main"
  tags   = local.tags
}
