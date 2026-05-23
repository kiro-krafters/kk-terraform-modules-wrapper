# module "tags" {
#   source         = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-tags?ref=main"
#   application    = var.application
#   company        = var.company
#   environment    = var.environment
#   custom_tags    = var.custom_tags
#   project_name   = var.project_name == "" ? var.application : var.project_name
#   repository_url = var.repository_url
#   region         = var.region == "" ? var.region_suffix : var.region
# }
