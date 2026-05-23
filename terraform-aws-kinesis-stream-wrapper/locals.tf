# To retrieve the client-consumer project path from GitLab's $CI_PROJECT_PATH
data "external" "env" {
  program = ["${path.module}/scripts/env.sh"]
}

locals {
  kinesis_stream_name = var.kinesis_stream_name
  tags                = var.tags
}
