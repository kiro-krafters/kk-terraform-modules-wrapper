# To retrieve the client-consumer project path from GitLab's $CI_PROJECT_PATH
data "external" "env" {
  program = ["${path.module}/scripts/env.sh"]
}

locals {
  firehose_name = var.name
  tags = merge(
    var.tags,
    {
      project_path = data.external.env.result["project_path"]
      created_by   = "terraform"
    },
  )
}
