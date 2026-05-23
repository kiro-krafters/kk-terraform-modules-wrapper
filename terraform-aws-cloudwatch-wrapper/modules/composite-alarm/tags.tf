# module "tags" {
#   source         = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-tags?ref=v1.0.0"
#   application    = var.application
#   company        = var.company
#   environment    = var.environment
#   custom_tags    = var.custom_tags
#   project_name   = var.project_name == "" ? var.application : var.project_name
#   repository_url = var.repository_url
#   region         = var.region == "" ? var.region_suffix : var.region
# }
